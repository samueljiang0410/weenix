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

#include "kernel.h"
#include "errno.h"
#include "globals.h"

#include "vm/vmmap.h"
#include "vm/shadow.h"
#include "vm/anon.h"

#include "proc/proc.h"

#include "util/debug.h"
#include "util/list.h"
#include "util/string.h"
#include "util/printf.h"

#include "fs/vnode.h"
#include "fs/file.h"
#include "fs/fcntl.h"
#include "fs/vfs_syscall.h"

#include "mm/slab.h"
#include "mm/page.h"
#include "mm/mm.h"
#include "mm/mman.h"
#include "mm/mmobj.h"

static slab_allocator_t *vmmap_allocator;
static slab_allocator_t *vmarea_allocator;

void vmmap_init(void) {
	vmmap_allocator = slab_allocator_create("vmmap", sizeof(vmmap_t));
	KASSERT(NULL != vmmap_allocator && "failed to create vmmap allocator!");
	vmarea_allocator = slab_allocator_create("vmarea", sizeof(vmarea_t));
	KASSERT(NULL != vmarea_allocator && "failed to create vmarea allocator!");
}

vmarea_t *
vmarea_alloc(void) {
	vmarea_t *newvma = (vmarea_t *) slab_obj_alloc(vmarea_allocator);
	if (newvma) {
		newvma->vma_vmmap = NULL;
	}
	return newvma;
}

void vmarea_free(vmarea_t *vma) {
	KASSERT(NULL != vma);
	slab_obj_free(vmarea_allocator, vma);
}

/* a debugging routine: dumps the mappings of the given address space. */
size_t vmmap_mapping_info(const void *vmmap, char *buf, size_t osize) {
	KASSERT(0 < osize);
	KASSERT(NULL != buf);
	KASSERT(NULL != vmmap);

	vmmap_t *map = (vmmap_t *) vmmap;
	vmarea_t *vma;
	ssize_t size = (ssize_t) osize;

	int len = snprintf(buf, size, "%21s %5s %7s %8s %10s %12s\n", "VADDR RANGE",
			"PROT", "FLAGS", "MMOBJ", "OFFSET", "VFN RANGE");

	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
				{
					size -= len;
					buf += len;
					if (0 >= size) {
						goto end;
					}

					len =
							snprintf(buf, size,
									"%#.8x-%#.8x  %c%c%c  %7s 0x%p %#.5x %#.5x-%#.5x\n",
									vma->vma_start << PAGE_SHIFT,
									vma->vma_end << PAGE_SHIFT,
									(vma->vma_prot & PROT_READ ? 'r' : '-'),
									(vma->vma_prot & PROT_WRITE ? 'w' : '-'),
									(vma->vma_prot & PROT_EXEC ? 'x' : '-'),
									(vma->vma_flags & MAP_SHARED ?
											" SHARED" : "PRIVATE"),
									vma->vma_obj, vma->vma_off, vma->vma_start,
									vma->vma_end);
				}list_iterate_end();

	end: if (size <= 0) {
		size = osize;
		buf[osize - 1] = '\0';
	}
	/*
	 KASSERT(0 <= size);
	 if (0 == size) {
	 size++;
	 buf--;
	 buf[0] = '\0';
	 }
	 */
	return osize - size;
}

/* Create a new vmmap, which has no vmareas and does
 * not refer to a process. */
vmmap_t *
vmmap_create(void) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_create");
	vmmap_t *vmmap = (vmmap_t *) slab_obj_alloc(vmmap_allocator);
	list_init(&vmmap->vmm_list);
	vmmap->vmm_proc = NULL;
        dbg(DBG_PRINT, "(GRADING3A)\n");
	return vmmap;
}

/* Removes all vmareas from the address space and frees the
 * vmmap struct. */
void vmmap_destroy(vmmap_t *map) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_destroy");
	KASSERT(NULL != map);
	dbg(DBG_PRINT, "(GRADING3A 3.a)\n");

	vmarea_t *vma;

	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
				{

					if (vma->vma_obj != NULL) {
						vma->vma_obj->mmo_ops->put(vma->vma_obj);
                                                dbg(DBG_PRINT, "(GRADING3A)\n");
					}
					vma->vma_obj = NULL;
					vma->vma_vmmap = NULL;
					list_remove(&vma->vma_plink);

					if (list_link_is_linked(&vma->vma_olink)) {
						list_remove(&vma->vma_olink);
                                                dbg(DBG_PRINT, "(GRADING3A)\n");
					}

					vmarea_free(vma);
                                        dbg(DBG_PRINT, "(GRADING3A)\n");
				}list_iterate_end();
	map->vmm_proc = NULL;
	slab_obj_free(vmmap_allocator, map);
        dbg(DBG_PRINT, "(GRADING3A)\n");
}

/* Add a vmarea to an address space. Assumes (i.e. asserts to some extent)
 * the vmarea is valid.  This involves finding where to put it in the list
 * of VM areas, and adding it. Don't forget to set the vma_vmmap for the
 * area. */
void vmmap_insert(vmmap_t *map, vmarea_t *newvma) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_insert");
	KASSERT(NULL != map && NULL != newvma);
	KASSERT(NULL == newvma->vma_vmmap);
	KASSERT(newvma->vma_start < newvma->vma_end);
	KASSERT(
			ADDR_TO_PN(USER_MEM_LOW) <= newvma->vma_start && ADDR_TO_PN(USER_MEM_HIGH) >= newvma->vma_end);
	dbg(DBG_PRINT, "(GRADING3A 3.b)\n");

	newvma->vma_vmmap = map;
	int res = 1;
	if (list_empty(&map->vmm_list)) {
		list_insert_head(&map->vmm_list, &newvma->vma_plink);
		res = 0;
                dbg(DBG_PRINT, "(GRADING3A)\n");
	} else {
		vmarea_t *vma;
		list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
					{
						if (res == 1 && vma->vma_end >= newvma->vma_end) {
							list_insert_before(&vma->vma_plink,
									&newvma->vma_plink);
							res = 0;
                                                        dbg(DBG_PRINT, "(GRADING3A)\n");
						}
                                                dbg(DBG_PRINT, "(GRADING3A)\n");
					}list_iterate_end();
		if (res == 1) {
			list_insert_tail(&map->vmm_list, &newvma->vma_plink);
			res = 0;
                        dbg(DBG_PRINT, "(GRADING3A)\n");
		}
                dbg(DBG_PRINT, "(GRADING3A)\n");
	}
        dbg(DBG_PRINT, "(GRADING3A)\n");
}

/* Find a contiguous range of free virtual pages of length npages in
 * the given address space. Returns starting vfn for the range,
 * without altering the map. Returns -1 if no such range exists.
 *
 * Your algorithm should be first fit. If dir is VMMAP_DIR_HILO, you
 * should find a gap as high in the address space as possible; if dir
 * is VMMAP_DIR_LOHI, the gap should be as low as possible. */
int vmmap_find_range(vmmap_t *map, uint32_t npages, int dir) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_find_range");
	uint32_t low_page = ADDR_TO_PN(USER_MEM_LOW);
	uint32_t high_page = ADDR_TO_PN(USER_MEM_HIGH);
        KASSERT(dir == VMMAP_DIR_HILO);
        if (vmmap_is_range_empty(map, high_page - npages, npages)) {
                dbg(DBG_PRINT, "(GRADING3A)\n");
                return high_page - npages;
        } else {
                vmarea_t *vma;
                list_iterate_reverse(&map->vmm_list, vma, vmarea_t, vma_plink)
                {
                        if (vma == list_head(&map->vmm_list, vmarea_t, vma_plink)) {
                                dbg(DBG_PRINT, "(GRADING3D 2)\n");
                                break;
                        } else {
                                list_link_t *cur = &vma->vma_plink;
                                list_link_t *prev = cur->l_prev;
                                vmarea_t *prev_vma = list_item(prev, vmarea_t,
                                                vma_plink);
                                if (vma->vma_start - prev_vma->vma_end
                                                >= npages) {
                                        dbg(DBG_PRINT, "(GRADING3D 1)\n");
                                        return vma->vma_start - npages;
                                }
                                dbg(DBG_PRINT, "(GRADING3D 1)\n");
                        }
                        dbg(DBG_PRINT, "(GRADING3D 1)\n");
                }list_iterate_end();
                if(vma->vma_start - ADDR_TO_PN(USER_MEM_LOW) >= npages) {
                        dbg(DBG_PRINT, "(GRADING3D 2)\n");
                        return vma->vma_start - npages;
                }
                dbg(DBG_PRINT, "(GRADING3D 2)\n");
        }
        dbg(DBG_PRINT, "(GRADING3D 2)\n");
	return -1;
}

/* Find the vm_area that vfn lies in. Simply scan the address space
 * looking for a vma whose range covers vfn. If the page is unmapped,
 * return NULL. */
vmarea_t *
vmmap_lookup(vmmap_t *map, uint32_t vfn) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_lookup");
	KASSERT(NULL != map);
	dbg(DBG_PRINT, "(GRADING3A 3.c)\n");

        KASSERT(!list_empty(&map->vmm_list));
//	if (list_empty(&map->vmm_list)) {
//		return NULL;
//	}
	vmarea_t *vma;
	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink) {
                if (vfn >= vma->vma_start && vfn < vma->vma_end) {
                        dbg(DBG_PRINT, "(GRADING3A)\n");
                        return vma;
                }
                dbg(DBG_PRINT, "(GRADING3A)\n");
        }list_iterate_end();
        dbg(DBG_PRINT, "(GRADING3A)\n");
	return NULL;
}

/* Allocates a new vmmap containing a new vmarea for each area in the
 * given map. The areas should have no mmobjs set yet. Returns pointer
 * to the new vmmap on success, NULL on failure. This function is
 * called when implementing fork(2). */
vmmap_t *
vmmap_clone(vmmap_t *map) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_clone");
	vmmap_t *new_vmap = vmmap_create();
	new_vmap->vmm_proc = map->vmm_proc;

	vmarea_t *vma;
	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
				{
					vmarea_t *c_vma = vmarea_alloc();
					list_init(&c_vma->vma_plink);
					list_init(&c_vma->vma_olink);
					c_vma->vma_start = vma->vma_start;
					c_vma->vma_end = vma->vma_end;
					c_vma->vma_off = vma->vma_off;
					c_vma->vma_flags = vma->vma_flags;
					c_vma->vma_prot = vma->vma_prot;
					c_vma->vma_vmmap = new_vmap;
					list_insert_tail(&new_vmap->vmm_list, &c_vma->vma_plink);
                                        dbg(DBG_PRINT, "(GRADING3A)\n");
				}list_iterate_end();
        dbg(DBG_PRINT, "(GRADING3A)\n");
	return new_vmap;
}

/* Insert a mapping into the map starting at lopage for npages pages.
 * If lopage is zero, we will find a range of virtual addresses in the
 * process that is big enough, by using vmmap_find_range with the same
 * dir argument.  If lopage is non-zero and the specified region
 * contains another mapping that mapping should be unmapped.
 *
 * If file is NULL an anon mmobj will be used to create a mapping
 * of 0's.  If file is non-null that vnode's file will be mapped in
 * for the given range.  Use the vnode's mmap operation to get the
 * mmobj for the file; do not assume it is file->vn_obj. Make sure all
 * of the area's fields except for vma_obj have been set before
 * calling mmap.
 *
 * If MAP_PRIVATE is specified set up a shadow object for the mmobj.
 *
 * All of the input to this function should be valid (KASSERT!).
 * See mmap(2) for for description of legal input.
 * Note that off should be page aligned.
 *
 * Be very careful about the order operations are performed in here. Some
 * operation are impossible to undo and should be saved until there
 * is no chance of failure.
 *
 * If 'new' is non-NULL a pointer to the new vmarea_t should be stored in it.
 */
int vmmap_map(vmmap_t *map, vnode_t *file, uint32_t lopage, uint32_t npages,
		int prot, int flags, off_t off, int dir, vmarea_t **new) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_map");
	KASSERT(NULL != map);
	KASSERT(0 < npages);
	KASSERT((MAP_SHARED & flags) || (MAP_PRIVATE & flags));
	KASSERT((0 == lopage) || (ADDR_TO_PN(USER_MEM_LOW) <= lopage));
	KASSERT((0 == lopage) || (ADDR_TO_PN(USER_MEM_HIGH) >= (lopage + npages)));
	KASSERT(PAGE_ALIGNED(off));
	dbg(DBG_PRINT, "(GRADING3A 3.d)\n");

	vmarea_t *vma = vmarea_alloc();
	vma->vma_prot = prot;
	vma->vma_flags = flags;
	vma->vma_off = ADDR_TO_PN(off);
	list_init(&vma->vma_plink);
	list_init(&vma->vma_olink);

	if (lopage == 0) {
		int start_vfn = vmmap_find_range(map, npages, dir);
		if (start_vfn < 0) {
			vmarea_free(vma);
                        dbg(DBG_PRINT, "(GRADING3D 2)\n");
			return start_vfn;
		}
		lopage = start_vfn;
                dbg(DBG_PRINT, "(GRADING3A)\n");
	} else {
		if (!vmmap_is_range_empty(map, lopage, npages)) {
			vmmap_remove(map, lopage, npages);
                        dbg(DBG_PRINT, "(GRADING3A)\n");
		}
                dbg(DBG_PRINT, "(GRADING3A)\n");
	}

	vma->vma_start = lopage;
	vma->vma_end = lopage + npages;

	mmobj_t *vmobj;

	if (file == NULL) {
		vmobj = anon_create();
                dbg(DBG_PRINT, "(GRADING3A)\n");
	} else {
		int res = file->vn_ops->mmap(file, vma, &vmobj);
                KASSERT(res >= 0);
//		if (res < 0) {
//			vmarea_free(vma);
//			return res;
//		}
                dbg(DBG_PRINT, "(GRADING3A)\n");
	}

	if (flags & MAP_PRIVATE) {
		mmobj_t *shobj = shadow_create();

		shobj->mmo_shadowed = vmobj;
		//vmobj->mmo_ops->ref(vmobj);
		//find the bottom obj, it could be vmobj or its bottom obj
                KASSERT(vmobj->mmo_shadowed == NULL);
//		if (vmobj->mmo_shadowed == NULL) {
                shobj->mmo_un.mmo_bottom_obj = vmobj;
                dbg(DBG_PRINT, "(GRADING3A)\n");
//		} else {
//			mmobj_t *temp = vmobj->mmo_un.mmo_bottom_obj;
//			shobj->mmo_un.mmo_bottom_obj = temp;
//			//temp->mmo_ops->ref(temp);
//		}
		vma->vma_obj = shobj;
		//shobj->mmo_ops->ref(shobj);
                dbg(DBG_PRINT, "(GRADING3A)\n");
	} else {
		vma->vma_obj = vmobj;
		//vmobj->mmo_ops->ref(vmobj);
                dbg(DBG_PRINT, "(GRADING3D 1)\n");
	}

	mmobj_t *bottom_obj = mmobj_bottom_obj(vma->vma_obj);
	list_insert_head(&bottom_obj->mmo_un.mmo_vmas, &vma->vma_olink);
	vmmap_insert(map, vma);

	if (new != NULL) {
		*new = vma;
                dbg(DBG_PRINT, "(GRADING3A)\n");
	}

        dbg(DBG_PRINT, "(GRADING3A)\n");
	return 0;
}

/*
 * We have no guarantee that the region of the address space being
 * unmapped will play nicely with our list of vmareas.
 *
 * You must iterate over each vmarea that is partially or wholly covered
 * by the address range [addr ... addr+len). The vm-area will fall into one
 * of four cases, as illustrated below:
 *
 * key:
 *          [             ]   Existing VM Area
 *        *******             Region to be unmapped
 *
 * Case 1:  [   ******    ]
 * The region to be unmapped lies completely inside the vmarea. We need to
 * split the old vmarea into two vmareas. be sure to increment the
 * reference count to the file associated with the vmarea.
 *
 * Case 2:  [      *******]**
 * The region overlaps the end of the vmarea. Just shorten the length of
 * the mapping.
 *
 * Case 3: *[*****        ]
 * The region overlaps the beginning of the vmarea. Move the beginning of
 * the mapping (remember to update vma_off), and shorten its length.
 *
 * Case 4: *[*************]**
 * The region completely contains the vmarea. Remove the vmarea from the
 * list.
 */
int vmmap_remove(vmmap_t *map, uint32_t lopage, uint32_t npages) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_remove");
        KASSERT(npages != 0);
//	if (npages == 0) {
//		return 0;
//	}

	uint32_t hipage = lopage + npages;
	vmarea_t *vma;

	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink) {
                uint32_t stvma = vma->vma_start;
                uint32_t endvma = vma->vma_end;

                if (stvma >= hipage || endvma <= lopage) {
                        dbg(DBG_PRINT, "(GRADING3A)\n");
                        continue;
                } else if (stvma < lopage && hipage < endvma) {
                        //case 1:
                        vmarea_t *nvma = vmarea_alloc();
                        nvma->vma_start = hipage;
                        nvma->vma_end = vma->vma_end;
                        vma->vma_end = lopage;
                        nvma->vma_off = vma->vma_off + (hipage - vma->vma_start);
                        nvma->vma_flags = vma->vma_flags;
                        nvma->vma_prot = vma->vma_prot;
                        nvma->vma_obj = vma->vma_obj;
                        if (nvma->vma_obj != NULL) {
                                nvma->vma_obj->mmo_ops->ref(nvma->vma_obj);
                                dbg(DBG_PRINT, "(GRADING3D 2)\n");
                        }
                        list_link_init(&nvma->vma_olink);
                        list_link_init(&nvma->vma_plink);
                        list_insert_before(&vma->vma_olink, &nvma->vma_olink);
                        vmmap_insert(map, nvma);
                        dbg(DBG_PRINT, "(GRADING3D 2)\n");
                } else if (stvma < lopage && lopage < endvma && endvma <= hipage) {
                        //case 2:
                        vma->vma_end = lopage;
                        dbg(DBG_PRINT, "(GRADING3D 1)\n");
                } else if (lopage <= stvma && stvma < hipage && hipage < endvma) {
                        // case 3:
                        vma->vma_start = hipage;
                        vma->vma_off += hipage - stvma;
                        dbg(DBG_PRINT, "(GRADING3D 2)\n");
                } else {
                        //case 4:
                        vma->vma_obj->mmo_ops->put(vma->vma_obj);
                        vma->vma_vmmap = NULL;
                        vma->vma_obj = NULL;
                        list_remove(&vma->vma_plink);
                        if (list_link_is_linked(&vma->vma_olink)) {
                                list_remove(&vma->vma_olink);
                                dbg(DBG_PRINT, "(GRADING3A)\n");
                        }
                        vmarea_free(vma);
                        dbg(DBG_PRINT, "(GRADING3A)\n");
                }
                dbg(DBG_PRINT, "(GRADING3A)\n");
        }list_iterate_end();
        dbg(DBG_PRINT, "(GRADING3A)\n");
	return 0;

}

/*
 * Returns 1 if the given address space has no mappings for the
 * given range, 0 otherwise.
 */
int vmmap_is_range_empty(vmmap_t *map, uint32_t startvfn, uint32_t npages) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_is_range_empty");
	uint32_t endvfn = startvfn + npages;
	KASSERT((startvfn < endvfn) && (ADDR_TO_PN(USER_MEM_LOW) <= startvfn) && (ADDR_TO_PN(USER_MEM_HIGH) >= endvfn));
	dbg(DBG_PRINT, "(GRADING3A 3.e)\n");

	vmarea_t *vma;
	list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
				{
					if (startvfn >= vma->vma_end || endvfn <= vma->vma_start) {
                                                dbg(DBG_PRINT, "(GRADING3A)\n");
					} else {
                                                dbg(DBG_PRINT, "(GRADING3A)\n");
                                                return 0;
					}
                                        dbg(DBG_PRINT, "(GRADING3A)\n");
                                }list_iterate_end();
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return 1;
}

/* Read into 'buf' from the virtual address space of 'map' starting at
 * 'vaddr' for size 'count'. To do so, you will want to find the vmareas
 * to read from, then find the pframes within those vmareas corresponding
 * to the virtual addresses you want to read, and then read from the
 * physical memory that pframe points to. You should not check permissions
 * of the areas. Assume (KASSERT) that all the areas you are accessing exist.
 * Returns 0 on success, -errno on error.
 */
int vmmap_read(vmmap_t *map, const void *vaddr, void *buf, size_t count) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_read");
	size_t remain = count;
	uint32_t curr_vaddr = (uint32_t) vaddr;

	while (remain > 0) {
		uint32_t vfn = ADDR_TO_PN(curr_vaddr);
		uint32_t offset = PAGE_OFFSET(curr_vaddr);

		vmarea_t *vma = vmmap_lookup(map, vfn);
                KASSERT(vma != NULL);
//		if (vma == NULL) {
//                        return -1;
//		}
		// pagenum is the vma_off + internal offset
		uint32_t pagenum = vma->vma_off + vfn - vma->vma_start;
		pframe_t *pf;

		int res = vma->vma_obj->mmo_ops->lookuppage(vma->vma_obj, pagenum, 1, &pf);
                KASSERT(res >= 0);
//		if (res < 0) {
//                        return res;
//		}

		//Within one page or multiple page
		size_t read = MIN(PAGE_SIZE - offset, remain);

		memcpy((char *) buf + count - remain, ((char *) pf->pf_addr) + offset, read);

		remain -= read;
		curr_vaddr += read;
                dbg(DBG_PRINT, "(GRADING3A)\n");
        }
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return 0;
}

/* Write from 'buf' into the virtual address space of 'map' starting at
 * 'vaddr' for size 'count'. To do this, you will need to find the correct
 * vmareas to write into, then find the correct pframes within those vmareas,
 * and finally write into the physical addresses that those pframes correspond
 * to. You should not check permissions of the areas you use. Assume (KASSERT)
 * that all the areas you are accessing exist. Remember to dirty pages!
 * Returns 0 on success, -errno on error.
 */
int vmmap_write(vmmap_t *map, void *vaddr, const void *buf, size_t count) {
	//NOT_YET_IMPLEMENTED("VM: vmmap_write");
	size_t remain = count;
	uint32_t curr_vaddr = (uint32_t) vaddr;

	while (remain > 0) {
		uint32_t vfn = ADDR_TO_PN((uint32_t )curr_vaddr);
		uint32_t offset = PAGE_OFFSET((uintptr_t )curr_vaddr);

		vmarea_t *vma = vmmap_lookup(map, vfn);
                KASSERT(vma != NULL);
//		if (vma == NULL) {
//                        return -1;
//		}

		uint32_t pagenum = vma->vma_off + vfn - vma->vma_start;
		pframe_t *pf;

		int res = vma->vma_obj->mmo_ops->lookuppage(vma->vma_obj, pagenum, 1,
				&pf);
                KASSERT(res >= 0);
//		if (res < 0) {
//                        return res;
//		}

		size_t write = MIN(PAGE_SIZE - offset, remain);
		memcpy(((char *) pf->pf_addr) + offset, (char *) buf + count - remain,
				write);
		vma->vma_obj->mmo_ops->dirtypage(vma->vma_obj, pf);

		remain -= write;
		curr_vaddr += write;
                dbg(DBG_PRINT, "(GRADING3A)\n");
        }
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return 0;
}
