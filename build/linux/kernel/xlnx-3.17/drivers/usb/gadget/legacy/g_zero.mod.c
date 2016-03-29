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
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0xc996d097, __VMLINUX_SYMBOL_STR(del_timer) },
	{ 0x33ba5cd4, __VMLINUX_SYMBOL_STR(param_ops_bool) },
	{ 0x593a99b, __VMLINUX_SYMBOL_STR(init_timer_key) },
	{ 0x7d11c268, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0x2a2e18d9, __VMLINUX_SYMBOL_STR(usb_ep_autoconfig_reset) },
	{ 0x5d41c87c, __VMLINUX_SYMBOL_STR(param_ops_charp) },
	{ 0xd5f2172f, __VMLINUX_SYMBOL_STR(del_timer_sync) },
	{ 0xd459ee55, __VMLINUX_SYMBOL_STR(usb_put_function_instance) },
	{ 0x8834396c, __VMLINUX_SYMBOL_STR(mod_timer) },
	{ 0x4f7e710a, __VMLINUX_SYMBOL_STR(usb_composite_overwrite_options) },
	{ 0xb7c6bf31, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0x7adf9031, __VMLINUX_SYMBOL_STR(usb_composite_probe) },
	{ 0x63dbb937, __VMLINUX_SYMBOL_STR(usb_add_function) },
	{ 0x3bd1b1f6, __VMLINUX_SYMBOL_STR(msecs_to_jiffies) },
	{ 0xc60bb5a8, __VMLINUX_SYMBOL_STR(usb_put_function) },
	{ 0x1799b6ad, __VMLINUX_SYMBOL_STR(usb_composite_unregister) },
	{ 0xa58bd060, __VMLINUX_SYMBOL_STR(usb_get_function) },
	{ 0xfaa7e360, __VMLINUX_SYMBOL_STR(usb_string_ids_tab) },
	{ 0x677c1946, __VMLINUX_SYMBOL_STR(usb_add_config_only) },
	{ 0x8fc178a8, __VMLINUX_SYMBOL_STR(usb_get_function_instance) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0xafad493b, __VMLINUX_SYMBOL_STR(param_ops_ushort) },
	{ 0x47c8baf4, __VMLINUX_SYMBOL_STR(param_ops_uint) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=libcomposite";

