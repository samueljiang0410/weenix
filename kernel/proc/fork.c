/******************************************************************************/
/* Important Spring 2023 CSCI 402 usage information:                          */
/*                                                                            */
/* This fils is part of CSCI 402 kernel programming assignments at USC.       */
/*         53616c7465645f5fd1e93dbf35cbffa3aef28f8c01d8cf2ffc51ef62b26a       */
/*         f9bda5a68e5ed8c972b17bab0f42e24b19daa7bd408305b1f7bd6c7208c1       */
/*         0e36230e913039b3046dd5fd0ba706a624d33dbaa4d6aab02c82fe09f561       */
/*         01b0fd977b0051f0b0ce0c69f7db857b1b5e007be2db6d42894bf93de848       */
/*         806d9152bd5715e9                                                   */
/* Please understand that you are NOT permitted to distribute or publically   */
/*         display a copy of this file (or ANY PART of it) for any reason.    */
/* If anyone (including your prospective employer) asks you to post the code, */
/*         you must inform them that you do NOT have permissions to do so.    */
/* You are also NOT permitted to remove or alter this comment block.          */
/* If this comment block is removed or altered in a submitted file, 20 points */
/*         will be deducted.                                                  */
/******************************************************************************/

#include "types.h"
#include "globals.h"
#include "errno.h"

#include "util/debug.h"
#include "util/string.h"

#include "proc/proc.h"
#include "proc/kthread.h"

#include "mm/mm.h"
#include "mm/mman.h"
#include "mm/page.h"
#include "mm/pframe.h"
#include "mm/mmobj.h"
#include "mm/pagetable.h"
#include "mm/tlb.h"

#include "fs/file.h"
#include "fs/vnode.h"

#include "vm/shadow.h"
#include "vm/vmmap.h"

#include "api/exec.h"

#include "main/interrupt.h"

/* Pushes the appropriate things onto the kernel stack of a newly forked thread
 * so that it can begin execution in userland_entry.
 * regs: registers the new thread should have on execution
 * kstack: location of the new thread's kernel stack
 * Returns the new stack pointer on success. */
static uint32_t
fork_setup_stack(const regs_t *regs, void *kstack)
{
        /* Pointer argument and dummy return address, and userland dummy return
         * address */
        uint32_t esp = ((uint32_t) kstack) + DEFAULT_STACK_SIZE - (sizeof(regs_t) + 12);
        *(void **)(esp + 4) = (void *)(esp + 8); /* Set the argument to point to location of struct on stack */
        memcpy((void *)(esp + 8), regs, sizeof(regs_t)); /* Copy over struct */
        return esp;
}


/*
 * The implementation of fork(2). Once this works,
 * you're practically home free. This is what the
 * entirety of Weenix has been leading up to.
 * Go forth and conquer.
 */
int
do_fork(struct regs *regs)
{
        vmarea_t *vma, *clone_vma;
        pframe_t *pf;
        mmobj_t *to_delete, *new_shadowed;

//        NOT_YET_IMPLEMENTED("VM: do_fork");
        KASSERT(regs != NULL); /* the function argument must be non-NULL */
        KASSERT(curproc != NULL); /* the parent process, which is curproc, must be non-NULL */
        KASSERT(curproc->p_state == PROC_RUNNING); /* the parent process must be in the running state and not in the zombie state */
        dbg(DBG_PRINT, "(GRADING3A 7.a)\n");
        /* following recipe in http://merlot.usc.edu/cs402-s23/projects/kernel/faq.html#q_fork_pseudocode */

        /* bullet 1. Allocate a proc_t out of the procs structure using proc_create().*/
        proc_t *newproc = proc_create("newproc");
        //since we copy the parent's AS and page, destroy the new vmmap and pagedir from proc_create
        //pt_destroy_pagedir(newproc->p_pagedir);
        //vmmap_destroy(newproc->p_vmmap);

        /* bullet 2. Copy the vmmap_t from the parent process into the child using vmmap_clone().
         * bullet 3. For each private mapping, point the vmarea_t at the new shadow object,*/
        vmmap_t *new_vmmap = vmmap_clone(curproc->p_vmmap);
        new_vmmap->vmm_proc = newproc;
        newproc->p_vmmap = new_vmmap;
        vmarea_t *curr_vma = NULL;
        list_iterate_begin(&curproc->p_vmmap->vmm_list, curr_vma, vmarea_t , vma_plink) {
                                // point the newproc's vmareas' mmobjs to the old proc's vmareas' mmobjs
                                vmarea_t *new_vma = vmmap_lookup(new_vmmap, curr_vma->vma_start);
                                new_vma->vma_obj = curr_vma->vma_obj;
                                new_vma->vma_obj->mmo_ops->ref(new_vma->vma_obj);

                                // for private mapping, point vmarea_t to the new shadow obj for both parent and child
                                // then the new shadow objs point to the old shadow mmobj
                                if(new_vma->vma_flags & MAP_PRIVATE) {
                                        mmobj_t *curr_shadow = shadow_create(); // ref = 1
                                        mmobj_t *new_shadow = shadow_create(); // ref = 1
                                        mmobj_t *shadowed_obj = curr_vma->vma_obj;
                                        mmobj_t *bottom_obj = mmobj_bottom_obj(shadowed_obj);
                                        // update new shawdow objects' pointers
                                        curr_shadow->mmo_shadowed = shadowed_obj; // shadowed_obj's ref should stay the same
                                        new_shadow->mmo_shadowed = shadowed_obj;
                                        curr_shadow->mmo_un.mmo_bottom_obj = bottom_obj;
                                        new_shadow->mmo_un.mmo_bottom_obj = bottom_obj;
                                        //todo: reconsider if we need to ref bottom obj. For now the next two lines are ref'ing bottom obj
                                        //update for bottom obj pointers: refer to bottom obj twice for new and curr_shadow and update vmalist
                                        // bottom_obj->mmo_ops->ref(bottom_obj);
                                        // bottom_obj->mmo_ops->ref(bottom_obj);
                                        list_insert_tail(&bottom_obj->mmo_un.mmo_vmas, &new_vma->vma_olink);
                                        // update vmareas' pointers (the new shadow and cur_shadow refs are updated to 1 at shadow_create()
                                        new_vma->vma_obj = new_shadow;
                                        curr_vma->vma_obj = curr_shadow;
                                        dbg(DBG_PRINT, "(GRADING3A)\n");
                                }
                                dbg(DBG_PRINT, "(GRADING3A)\n");
                        } list_iterate_end();

        /* bullet 4. unmap the userland page table entries and flush TLB */
        pt_unmap_range(curproc->p_pagedir, USER_MEM_LOW, USER_MEM_HIGH);
        tlb_flush_all();

        /* bullet 6. Copy the file descriptor table of the parent into the child. Remember to use fref() here. */
        for(int i = 0; i < NFILES; i++) {
                newproc->p_files[i] = curproc->p_files[i];
                if(newproc->p_files[i]) { 
                    fref(newproc->p_files[i]); 
                    dbg(DBG_PRINT, "(GRADING3A)\n");
                }
                dbg(DBG_PRINT, "(GRADING3A)\n");
        }

        /* bullet 7. Set the child's working directory to point to the parent's working directory (once again, remember reference counts). */
        if(newproc->p_cwd) {
            vput(newproc->p_cwd);
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
        newproc->p_cwd = curproc->p_cwd;
        KASSERT(newproc->p_cwd);
        vref(newproc->p_cwd);

        /* bullet 9. Set any other fields in the new process which need to be set. */
        newproc->p_brk = curproc->p_brk;
        newproc->p_start_brk = curproc->p_start_brk;

        /* bullet 8. Use kthread_clone() to copy the thread from the parent process into the child process. */
        kthread_t *newthr = kthread_clone(curthr);
        newthr->kt_proc = newproc;
        list_insert_head(&newproc->p_threads, &newthr->kt_plink);

        KASSERT(newproc->p_state == PROC_RUNNING); /* new child process starts in the running state */
        KASSERT(newproc->p_pagedir != NULL); /* new child process must have a valid page table */
        KASSERT(newthr->kt_kstack != NULL); /* thread in the new child process must have a valid kernel stack */
        dbg(DBG_PRINT, "(GRADING3A 7.a)\n");

        /* bullet 5. Set up the new process thread context (kt_ctx). */
        regs->r_eax = 0; /* Return value goes in eax for the child */
        newthr->kt_ctx.c_pdptr = newproc->p_pagedir;
        newthr->kt_ctx.c_eip = (uint32_t)userland_entry; // function pointer
        newthr->kt_ctx.c_esp = fork_setup_stack(regs, newthr->kt_kstack);
        newthr->kt_ctx.c_kstack = (uintptr_t)newthr->kt_kstack;
        newthr->kt_ctx.c_kstacksz = DEFAULT_STACK_SIZE;
        // now that eax is copied into child's stack, set the return value for parent
        regs->r_eax = newproc->p_pid; //todo we might not need this since the return value is the child pid. doesn't hurt to set it to be safe tho

        /* bullet 10. make the new thread runnable */
        sched_make_runnable(newthr);
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return newproc->p_pid;
}