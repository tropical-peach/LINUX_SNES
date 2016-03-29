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
	{ 0x5d41c87c, __VMLINUX_SYMBOL_STR(param_ops_charp) },
	{ 0x7a67ac8, __VMLINUX_SYMBOL_STR(platform_driver_unregister) },
	{ 0xcf7ca6ad, __VMLINUX_SYMBOL_STR(__platform_driver_register) },
	{ 0xe3c7ef7, __VMLINUX_SYMBOL_STR(rproc_vq_interrupt) },
	{ 0x2c6f33ff, __VMLINUX_SYMBOL_STR(rproc_add) },
	{ 0xe8055b22, __VMLINUX_SYMBOL_STR(rproc_alloc) },
	{ 0x6a4e5a7d, __VMLINUX_SYMBOL_STR(of_get_property) },
	{ 0xa2eaaf46, __VMLINUX_SYMBOL_STR(devm_ioremap_resource) },
	{ 0x14cf2679, __VMLINUX_SYMBOL_STR(of_find_device_by_node) },
	{ 0x6e1dcc11, __VMLINUX_SYMBOL_STR(of_parse_phandle) },
	{ 0x36d1506c, __VMLINUX_SYMBOL_STR(gpiod_to_irq) },
	{ 0x326729fa, __VMLINUX_SYMBOL_STR(devm_gpio_request_one) },
	{ 0x913b22, __VMLINUX_SYMBOL_STR(of_get_named_gpio_flags) },
	{ 0x43ae4ff7, __VMLINUX_SYMBOL_STR(devm_request_threaded_irq) },
	{ 0xae6b068d, __VMLINUX_SYMBOL_STR(platform_get_irq) },
	{ 0xda03d781, __VMLINUX_SYMBOL_STR(dma_supported) },
	{ 0xef13427f, __VMLINUX_SYMBOL_STR(dma_declare_coherent_memory) },
	{ 0x4490cc9e, __VMLINUX_SYMBOL_STR(platform_get_resource) },
	{ 0x7997ec20, __VMLINUX_SYMBOL_STR(devm_kmalloc) },
	{ 0x2d3385d3, __VMLINUX_SYMBOL_STR(system_wq) },
	{ 0xb2d48a2e, __VMLINUX_SYMBOL_STR(queue_work_on) },
	{ 0xb13e33e2, __VMLINUX_SYMBOL_STR(release_firmware) },
	{ 0x9d669763, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0xa7188bdc, __VMLINUX_SYMBOL_STR(request_firmware) },
	{ 0x61050c4d, __VMLINUX_SYMBOL_STR(outer_cache) },
	{ 0x4298b775, __VMLINUX_SYMBOL_STR(v7_flush_kern_cache_all) },
	{ 0x8e865d3c, __VMLINUX_SYMBOL_STR(arm_delay_ops) },
	{ 0x90d6e9a3, __VMLINUX_SYMBOL_STR(gpiod_set_raw_value) },
	{ 0x947f2eee, __VMLINUX_SYMBOL_STR(gpio_to_desc) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x5eb65dbe, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0xb0fdfa46, __VMLINUX_SYMBOL_STR(rproc_put) },
	{ 0x2691774, __VMLINUX_SYMBOL_STR(rproc_del) },
	{ 0x6fc26a21, __VMLINUX_SYMBOL_STR(dma_release_declared_memory) },
	{ 0xb7c6bf31, __VMLINUX_SYMBOL_STR(_dev_info) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=remoteproc";

MODULE_ALIAS("of:N*T*Cxlnx,mb_remoteproc*");
