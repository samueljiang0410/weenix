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

#include "globals.h"
#include "errno.h"

#include "util/string.h"
#include "util/debug.h"

#include "mm/mmobj.h"
#include "mm/pframe.h"
#include "mm/mm.h"
#include "mm/page.h"
#include "mm/slab.h"
#include "mm/tlb.h"

#include "vm/vmmap.h"
#include "vm/shadow.h"
#include "vm/shadowd.h"

#define SHADOW_SINGLETON_THRESHOLD 5

int shadow_count = 0; /* for debugging/verification purposes */
#ifdef __SHADOWD__
/*
 * number of shadow objects with a single parent, that is another shadow
 * object in the shadow objects tree(singletons)
 */
static int shadow_singleton_count = 0;
#endif

static slab_allocator_t *shadow_allocator;

static void shadow_ref(mmobj_t *o);
static void shadow_put(mmobj_t *o);
static int  shadow_lookuppage(mmobj_t *o, uint32_t pagenum, int forwrite, pframe_t **pf);
static int  shadow_fillpage(mmobj_t *o, pframe_t *pf);
static int  shadow_dirtypage(mmobj_t *o, pframe_t *pf);
static int  shadow_cleanpage(mmobj_t *o, pframe_t *pf);

static mmobj_ops_t shadow_mmobj_ops = {
        .ref = shadow_ref,
        .put = shadow_put,
        .lookuppage = shadow_lookuppage,
        .fillpage  = shadow_fillpage,
        .dirtypage = shadow_dirtypage,
        .cleanpage = shadow_cleanpage
};

/*
 * This function is called at boot time to initialize the
 * shadow page sub system. Currently it only initializes the
 * shadow_allocator object.
 */
void
shadow_init()
{
//        NOT_YET_IMPLEMENTED("VM: shadow_init");
        shadow_allocator = slab_allocator_create("shadow", sizeof(mmobj_t));
        KASSERT(shadow_allocator); /* after initialization, shadow_allocator must not be NULL */
        dbg(DBG_PRINT, "(GRADING3A 6.a)\n");
}

/*
 * You'll want to use the shadow_allocator to allocate the mmobj to
 * return, then then initialize it. Take a look in mm/mmobj.h for
 * macros or functions which can be of use here. Make sure your initial
 * reference count is correct.
 */
mmobj_t *
shadow_create()
{
//        NOT_YET_IMPLEMENTED("VM: shadow_create");
        mmobj_t *shadow_obj = (mmobj_t*) slab_obj_alloc(shadow_allocator);
        if(shadow_obj != NULL) {
                mmobj_init(shadow_obj, &shadow_mmobj_ops);
                shadow_obj->mmo_un.mmo_bottom_obj = NULL; // since init above by default is nonshadow
                shadow_obj->mmo_refcount = 1; // at creation there is 1 ref; noting this for fork.c
                dbg(DBG_PRINT,"(GRADING3A)\n");
        }
        dbg(DBG_PRINT,"(GRADING3A)\n");
        return shadow_obj;
}

/* Implementation of mmobj entry points: */

/*
 * Increment the reference count on the object.
 */
static void
shadow_ref(mmobj_t *o)
{
//        NOT_YET_IMPLEMENTED("VM: shadow_ref");
        KASSERT(o && (0 < o->mmo_refcount) && (&shadow_mmobj_ops == o->mmo_ops));/* the o function argument must be non-NULL, has a positive refcount, and is a shadow object */
        dbg(DBG_PRINT,"(GRADING3A 6.b)\n");
        o->mmo_refcount += 1;
        dbg(DBG_PRINT,"(GRADING3A)\n");
}

/*
 * Decrement the reference count on the object. If, however, the
 * reference count on the object reaches the number of resident
 * pages of the object, we can conclude that the object is no
 * longer in use and, since it is a shadow object, it will never
 * be used again. You should unpin and uncache all of the object's
 * pages and then free the object itself.
 */
static void
shadow_put(mmobj_t *o)
{
//        NOT_YET_IMPLEMENTED("VM: shadow_put");
        KASSERT(o && (0 < o->mmo_refcount) && (&shadow_mmobj_ops == o->mmo_ops)); /* the o function argument must be non-NULL, has a positive refcount, and is a shadow object */
        dbg(DBG_PRINT, "(GRADING3A 6.c)\n");
        if(o->mmo_refcount - 1 == o->mmo_nrespages) {
                // we can conclude that the object is no longer in use
                pframe_t *pf;
                //You should unpin and uncache all of the object's pages and then free the object itself
                list_iterate_begin(&o->mmo_respages, pf, pframe_t, pf_olink) {
                                        pframe_unpin(pf);
                                        KASSERT(!pframe_is_busy(pf));
                                        // while(pframe_is_busy(pf)){
                                        //         sched_sleep_on(&pf->pf_waitq);
                                        // }
                                        pframe_free(pf);
                                        dbg(DBG_PRINT,"(GRADING3A)\n");
                                } list_iterate_end();
                //o->mmo_un.mmo_bottom_obj->mmo_ops->put(o->mmo_un.mmo_bottom_obj);
                o->mmo_shadowed->mmo_ops->put(o->mmo_shadowed);
                slab_obj_free(shadow_allocator, o);
                dbg(DBG_PRINT,"(GRADING3A)\n");
        }
        o->mmo_refcount -= 1;
        dbg(DBG_PRINT,"(GRADING3A)\n");
}

/* This function looks up the given page in this shadow object. The
 * forwrite argument is true if the page is being looked up for
 * writing, false if it is being looked up for reading. This function
 * must handle all do-not-copy-on-not-write magic (i.e. when forwrite
 * is false find the first shadow object in the chain which has the
 * given page resident). copy-on-write magic (necessary when forwrite
 * is true) is handled in shadow_fillpage, not here. It is important to
 * use iteration rather than recursion here as a recursive implementation
 * can overflow the kernel stack when looking down a long shadow chain */
static int
shadow_lookuppage(mmobj_t *o, uint32_t pagenum, int forwrite, pframe_t **pf)
{
//        NOT_YET_IMPLEMENTED("VM: shadow_lookuppage");
        mmobj_t *curr_mmobj_in_shadow_chain = o;
        pframe_t *lookup_result_pf = NULL;
        if (forwrite) {
                int res = pframe_get(o, pagenum, &lookup_result_pf);
                if(res < 0) {
                        *pf = NULL;
                        dbg(DBG_PRINT, "(GRADING3D 2)\n");
                        return res;
                }
                *pf = lookup_result_pf;
                KASSERT(NULL != (*pf)); /* on return, (*pf) must be non-NULL */
                KASSERT((pagenum == (*pf)->pf_pagenum) && (!pframe_is_busy(*pf)));/* on return, the page frame must have the right pagenum and it must not be in the "busy" state */
                dbg(DBG_PRINT, "(GRADING3A 6.d)\n");
                return 0;
        }
        // not forwrite, do-not-copy-on-not-write magic
        while(curr_mmobj_in_shadow_chain) {
                // look up pageframe in the current mmobj
                lookup_result_pf = pframe_get_resident(curr_mmobj_in_shadow_chain, pagenum);
                if (lookup_result_pf != NULL) {
                        // found a lookup match
                        if(pframe_is_busy(lookup_result_pf)){
                                sched_sleep_on(&lookup_result_pf->pf_waitq);
                                dbg(DBG_PRINT, "(GRADING3B 7)\n");
                        }
                        dbg(DBG_PRINT,"(GRADING3A)\n");
                        break;
                }
                        // if the mmobj is at bottom, and cannot find page, create it
                else if(o->mmo_un.mmo_bottom_obj == curr_mmobj_in_shadow_chain) {
                        // fill the page
                        int res = pframe_lookup(curr_mmobj_in_shadow_chain, pagenum, 0, &lookup_result_pf);
                        if(res < 0) {
                                *pf = NULL;
                                dbg(DBG_PRINT, "(GRADING3D 2)\n");
                                return res;
                        }
                        KASSERT(!pframe_is_busy(lookup_result_pf));
                        // if(pframe_is_busy(lookup_result_pf)){
                        //         sched_sleep_on(&lookup_result_pf->pf_waitq);
                        // }
                        dbg(DBG_PRINT,"(GRADING3A)\n");
                        break;
                }
                curr_mmobj_in_shadow_chain = curr_mmobj_in_shadow_chain->mmo_shadowed; // the next mmobj in the shadow chain
                dbg(DBG_PRINT,"(GRADING3A)\n");
        }
        *pf = lookup_result_pf;
        KASSERT(NULL != (*pf)); /* on return, (*pf) must be non-NULL */
        KASSERT((pagenum == (*pf)->pf_pagenum) && (!pframe_is_busy(*pf)));/* on return, the page frame must have the right pagenum and it must not be in the "busy" state */
        dbg(DBG_PRINT, "(GRADING3A 6.d)\n");
        return 0;
}

/* As per the specification in mmobj.h, fill the page frame starting
 * at address pf->pf_addr with the contents of the page identified by
 * pf->pf_obj and pf->pf_pagenum. This function handles all
 * copy-on-write magic (i.e. if there is a shadow object which has
 * data for the pf->pf_pagenum-th page then we should take that data,
 * if no such shadow object exists we need to follow the chain of
 * shadow objects all the way to the bottom object and take the data
 * for the pf->pf_pagenum-th page from the last object in the chain).
 * It is important to use iteration rather than recursion here as a
 * recursive implementation can overflow the kernel stack when
 * looking down a long shadow chain */
static int
shadow_fillpage(mmobj_t *o, pframe_t *pf)
{
//        NOT_YET_IMPLEMENTED("VM: shadow_fillpage");
        KASSERT(pframe_is_busy(pf)); /* can only "fill" a page frame when the page frame is in the "busy" state */
        KASSERT(!pframe_is_pinned(pf)); /* must not fill a page frame that's already pinned */
        dbg(DBG_PRINT, "(GRADING3A 6.e)\n");
        // note that pf is the newly allocated pf in mmobj o
        mmobj_t *curr_mmobj_in_shadow_chain = o->mmo_shadowed;
        pframe_t *copy_from_pf = NULL; // the pf residing in one of the mmobjs down the shadow chain to copy from
        // find the page to copy from
        while(curr_mmobj_in_shadow_chain) {
                // look through pages of the current mmobj
                copy_from_pf = pframe_get_resident(curr_mmobj_in_shadow_chain, pf->pf_pagenum);
                if(copy_from_pf != NULL) {
                        // found target pf to copy from, copy it to the 2nd arg (pf) of this function
                        memcpy(pf->pf_addr, copy_from_pf->pf_addr, PAGE_SIZE);
                        // faq: "In weenix, if you pin pages that are suppose to have a backing store, then they will never need to have a backing store!"
                        pframe_pin(pf);
                        dbg(DBG_PRINT,"(GRADING3A)\n");
                        break;
                }
                        // if the mmobj is at bottom, and cannot find page, create it
                else if(o->mmo_un.mmo_bottom_obj == curr_mmobj_in_shadow_chain) {
                        // fill the page
                        int res = pframe_lookup(curr_mmobj_in_shadow_chain, pf->pf_pagenum, 1, &copy_from_pf);
                        if(res < 0) {
                                dbg(DBG_PRINT, "(GRADING3D 2)\n");
                                return res;
                        }
                        memcpy(pf->pf_addr, copy_from_pf->pf_addr, PAGE_SIZE);
                        pframe_pin(pf);
                        dbg(DBG_PRINT,"(GRADING3A)\n");
                        break;
                }
                // go down the shadow chain
                curr_mmobj_in_shadow_chain = curr_mmobj_in_shadow_chain->mmo_shadowed; // the next mmobj in the shadow chain
                dbg(DBG_PRINT,"(GRADING3A)\n");
        }
        dbg(DBG_PRINT,"(GRADING3A)\n");
        return 0;
}

/* These next two functions are not difficult. */

static int
shadow_dirtypage(mmobj_t *o, pframe_t *pf)
{
//        NOT_YET_IMPLEMENTED("VM: shadow_dirtypage");
// since there is no backing store, simply change the flag
        pframe_set_dirty(pf);
        dbg(DBG_PRINT,"(GRADING3A)\n");
        return 0;
}

static int
shadow_cleanpage(mmobj_t *o, pframe_t *pf)
{
        NOT_YET_IMPLEMENTED("VM: shadow_cleanpage");
// since there is no backing store, simply change the flag
        // pframe_clear_dirty(pf);
        return 0;
}