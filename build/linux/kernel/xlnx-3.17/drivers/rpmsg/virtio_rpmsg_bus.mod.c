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
	{ 0x2e1d3412, __VMLINUX_SYMBOL_STR(bus_register) },
	{ 0xa31b6f58, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0xbb4a2410, __VMLINUX_SYMBOL_STR(driver_register) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x2c315fd4, __VMLINUX_SYMBOL_STR(arm_dma_ops) },
	{ 0xae3e3abe, __VMLINUX_SYMBOL_STR(virtio_check_driver_offered_feature) },
	{ 0x21a39a6b, __VMLINUX_SYMBOL_STR(virtqueue_add_inbuf) },
	{ 0x6b3b7c1e, __VMLINUX_SYMBOL_STR(mutex_unlock) },
	{ 0xc883d3af, __VMLINUX_SYMBOL_STR(virtqueue_kick) },
	{ 0x91715312, __VMLINUX_SYMBOL_STR(sprintf) },
	{ 0xbb0e16f7, __VMLINUX_SYMBOL_STR(virtqueue_add_outbuf) },
	{ 0xa06c0fd3, __VMLINUX_SYMBOL_STR(virtqueue_get_buf) },
	{ 0x275ef902, __VMLINUX_SYMBOL_STR(__init_waitqueue_head) },
	{ 0xff8cbb1f, __VMLINUX_SYMBOL_STR(idr_destroy) },
	{ 0x57858283, __VMLINUX_SYMBOL_STR(device_register) },
	{ 0x5eb65dbe, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0xf7065a9c, __VMLINUX_SYMBOL_STR(__mutex_init) },
	{ 0x3227b74b, __VMLINUX_SYMBOL_STR(device_find_child) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xb221d65f, __VMLINUX_SYMBOL_STR(driver_unregister) },
	{ 0x328a05f1, __VMLINUX_SYMBOL_STR(strncpy) },
	{ 0x22a5fd23, __VMLINUX_SYMBOL_STR(virtqueue_disable_cb) },
	{ 0x84b183ae, __VMLINUX_SYMBOL_STR(strncmp) },
	{ 0xf67a6944, __VMLINUX_SYMBOL_STR(mutex_lock) },
	{ 0xbfbcddf8, __VMLINUX_SYMBOL_STR(idr_alloc) },
	{ 0xd85dcafa, __VMLINUX_SYMBOL_STR(bus_unregister) },
	{ 0x32907b91, __VMLINUX_SYMBOL_STR(idr_remove) },
	{ 0x4059792f, __VMLINUX_SYMBOL_STR(print_hex_dump) },
	{ 0xb7c6bf31, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0xa4af0b36, __VMLINUX_SYMBOL_STR(kmem_cache_alloc) },
	{ 0xb5684e29, __VMLINUX_SYMBOL_STR(idr_find_slowpath) },
	{ 0x9166079a, __VMLINUX_SYMBOL_STR(unregister_virtio_driver) },
	{ 0xa45cda14, __VMLINUX_SYMBOL_STR(put_device) },
	{ 0x3bd1b1f6, __VMLINUX_SYMBOL_STR(msecs_to_jiffies) },
	{ 0xd62c833f, __VMLINUX_SYMBOL_STR(schedule_timeout) },
	{ 0xd85cd67e, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x344b7739, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0xe114fa98, __VMLINUX_SYMBOL_STR(device_for_each_child) },
	{ 0xefdd2345, __VMLINUX_SYMBOL_STR(sg_init_one) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x9d669763, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0x1cfb04fa, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0xba223055, __VMLINUX_SYMBOL_STR(dev_warn) },
	{ 0x8080ccee, __VMLINUX_SYMBOL_STR(device_unregister) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0x4b1091a5, __VMLINUX_SYMBOL_STR(dev_set_name) },
	{ 0x528d0c14, __VMLINUX_SYMBOL_STR(idr_init) },
	{ 0x74bf8976, __VMLINUX_SYMBOL_STR(virtqueue_enable_cb) },
	{ 0x6c07d933, __VMLINUX_SYMBOL_STR(add_uevent_var) },
	{ 0x9da1684e, __VMLINUX_SYMBOL_STR(register_virtio_driver) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=virtio,virtio_ring";

MODULE_ALIAS("virtio:d00000007v*");
