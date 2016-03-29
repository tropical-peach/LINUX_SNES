#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xa5f4405d, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x13b8ecd6, __VMLINUX_SYMBOL_STR(kobject_put) },
	{ 0xfd1bb8d4, __VMLINUX_SYMBOL_STR(kmem_cache_destroy) },
	{ 0xc23482ca, __VMLINUX_SYMBOL_STR(simple_pin_fs) },
	{ 0xa31b6f58, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x12da5bb2, __VMLINUX_SYMBOL_STR(__kmalloc) },
	{ 0x9b388444, __VMLINUX_SYMBOL_STR(get_zeroed_page) },
	{ 0xfbc74f64, __VMLINUX_SYMBOL_STR(__copy_from_user) },
	{ 0xa9563129, __VMLINUX_SYMBOL_STR(up_read) },
	{ 0x528c709d, __VMLINUX_SYMBOL_STR(simple_read_from_buffer) },
	{ 0x5fc56a46, __VMLINUX_SYMBOL_STR(_raw_spin_unlock) },
	{ 0x72e90a12, __VMLINUX_SYMBOL_STR(generic_file_llseek) },
	{ 0x188a3dfb, __VMLINUX_SYMBOL_STR(timespec_trunc) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x97255bdf, __VMLINUX_SYMBOL_STR(strlen) },
	{ 0xcacdc92b, __VMLINUX_SYMBOL_STR(simple_write_end) },
	{ 0x67d612c1, __VMLINUX_SYMBOL_STR(simple_release_fs) },
	{ 0x34184afe, __VMLINUX_SYMBOL_STR(current_kernel_time) },
	{ 0x841b6e8c, __VMLINUX_SYMBOL_STR(generic_delete_inode) },
	{ 0xbdac1eb7, __VMLINUX_SYMBOL_STR(lockref_get) },
	{ 0xcc264138, __VMLINUX_SYMBOL_STR(dput) },
	{ 0x34c07cdc, __VMLINUX_SYMBOL_STR(inc_nlink) },
	{ 0x6b3b7c1e, __VMLINUX_SYMBOL_STR(mutex_unlock) },
	{ 0xed2544be, __VMLINUX_SYMBOL_STR(mount_single) },
	{ 0x5e3f63c9, __VMLINUX_SYMBOL_STR(generic_read_dir) },
	{ 0xe2d5255a, __VMLINUX_SYMBOL_STR(strcmp) },
	{ 0xf09a2128, __VMLINUX_SYMBOL_STR(down_read) },
	{ 0x7851282e, __VMLINUX_SYMBOL_STR(kobject_create_and_add) },
	{ 0xd1cc7105, __VMLINUX_SYMBOL_STR(d_delete) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0xf9060311, __VMLINUX_SYMBOL_STR(kern_path) },
	{ 0x5aa9ef1a, __VMLINUX_SYMBOL_STR(kill_litter_super) },
	{ 0x78a560c9, __VMLINUX_SYMBOL_STR(simple_write_begin) },
	{ 0xf7065a9c, __VMLINUX_SYMBOL_STR(__mutex_init) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x3b1c8ac1, __VMLINUX_SYMBOL_STR(d_rehash) },
	{ 0x328a05f1, __VMLINUX_SYMBOL_STR(strncpy) },
	{ 0xbe6d7ae6, __VMLINUX_SYMBOL_STR(bdi_init) },
	{ 0x37cebea, __VMLINUX_SYMBOL_STR(kmem_cache_free) },
	{ 0xf67a6944, __VMLINUX_SYMBOL_STR(mutex_lock) },
	{ 0xc806cb99, __VMLINUX_SYMBOL_STR(simple_readpage) },
	{ 0x92442d3e, __VMLINUX_SYMBOL_STR(module_put) },
	{ 0xc6cbbc89, __VMLINUX_SYMBOL_STR(capable) },
	{ 0xa4af0b36, __VMLINUX_SYMBOL_STR(kmem_cache_alloc) },
	{ 0xf447478a, __VMLINUX_SYMBOL_STR(simple_unlink) },
	{ 0x9d423795, __VMLINUX_SYMBOL_STR(simple_setattr) },
	{ 0x93fca811, __VMLINUX_SYMBOL_STR(__get_free_pages) },
	{ 0x8b8059bd, __VMLINUX_SYMBOL_STR(in_group_p) },
	{ 0xfcfa3a03, __VMLINUX_SYMBOL_STR(d_drop) },
	{ 0xb5ffb20a, __VMLINUX_SYMBOL_STR(path_put) },
	{ 0x9c0bd51f, __VMLINUX_SYMBOL_STR(_raw_spin_lock) },
	{ 0xdf31f159, __VMLINUX_SYMBOL_STR(kmem_cache_create) },
	{ 0x356160b8, __VMLINUX_SYMBOL_STR(register_filesystem) },
	{ 0x7afa89fc, __VMLINUX_SYMBOL_STR(vsnprintf) },
	{ 0x4302d0eb, __VMLINUX_SYMBOL_STR(free_pages) },
	{ 0xe953b21f, __VMLINUX_SYMBOL_STR(get_next_ino) },
	{ 0x857c1fe3, __VMLINUX_SYMBOL_STR(kernel_kobj) },
	{ 0x48b632e4, __VMLINUX_SYMBOL_STR(iput) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x71677c42, __VMLINUX_SYMBOL_STR(iunique) },
	{ 0xce9ee552, __VMLINUX_SYMBOL_STR(always_delete_dentry) },
	{ 0xff9c6119, __VMLINUX_SYMBOL_STR(generic_readlink) },
	{ 0xffa0bc7, __VMLINUX_SYMBOL_STR(d_make_root) },
	{ 0xe719c81b, __VMLINUX_SYMBOL_STR(simple_statfs) },
	{ 0xad5ea031, __VMLINUX_SYMBOL_STR(d_alloc_name) },
	{ 0xc0d4b95c, __VMLINUX_SYMBOL_STR(bdi_destroy) },
	{ 0x5dc67581, __VMLINUX_SYMBOL_STR(unregister_filesystem) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0xb81960ca, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0x662b8a6e, __VMLINUX_SYMBOL_STR(new_inode) },
	{ 0x983de7ce, __VMLINUX_SYMBOL_STR(d_instantiate) },
	{ 0x6070043d, __VMLINUX_SYMBOL_STR(try_module_get) },
	{ 0x5e662349, __VMLINUX_SYMBOL_STR(simple_rmdir) },
	{ 0x7b5116a1, __VMLINUX_SYMBOL_STR(__d_drop) },
	{ 0xe914e41e, __VMLINUX_SYMBOL_STR(strcpy) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "A03BDAD574FB944E0CB8E2F");
