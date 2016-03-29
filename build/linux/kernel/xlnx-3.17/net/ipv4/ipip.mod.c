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
	{ 0xaa0371b9, __VMLINUX_SYMBOL_STR(ip_tunnel_dellink) },
	{ 0x33ba5cd4, __VMLINUX_SYMBOL_STR(param_ops_bool) },
	{ 0xc85310c6, __VMLINUX_SYMBOL_STR(ip_tunnel_get_stats64) },
	{ 0xe6fa0cbe, __VMLINUX_SYMBOL_STR(ip_tunnel_change_mtu) },
	{ 0x179a89bf, __VMLINUX_SYMBOL_STR(ip_tunnel_uninit) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x764677d2, __VMLINUX_SYMBOL_STR(rtnl_link_unregister) },
	{ 0x377a27e5, __VMLINUX_SYMBOL_STR(unregister_pernet_device) },
	{ 0xcb31a355, __VMLINUX_SYMBOL_STR(xfrm4_tunnel_deregister) },
	{ 0xb15380fb, __VMLINUX_SYMBOL_STR(rtnl_link_register) },
	{ 0x7ad0a1d3, __VMLINUX_SYMBOL_STR(xfrm4_tunnel_register) },
	{ 0xf0c94af5, __VMLINUX_SYMBOL_STR(register_pernet_device) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x3262fbf4, __VMLINUX_SYMBOL_STR(ip_tunnel_init_net) },
	{ 0x44541307, __VMLINUX_SYMBOL_STR(ip_tunnel_delete_net) },
	{ 0xa03f14ff, __VMLINUX_SYMBOL_STR(ip_tunnel_rcv) },
	{ 0xb8a53333, __VMLINUX_SYMBOL_STR(iptunnel_pull_header) },
	{ 0x57b737c3, __VMLINUX_SYMBOL_STR(__xfrm_policy_check) },
	{ 0x7d11c268, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0x6542c46b, __VMLINUX_SYMBOL_STR(init_net) },
	{ 0x7360e645, __VMLINUX_SYMBOL_STR(ipv4_redirect) },
	{ 0x13865641, __VMLINUX_SYMBOL_STR(ipv4_update_pmtu) },
	{ 0xc9e5e583, __VMLINUX_SYMBOL_STR(ip_tunnel_lookup) },
	{ 0x2469810f, __VMLINUX_SYMBOL_STR(__rcu_read_unlock) },
	{ 0x8d522714, __VMLINUX_SYMBOL_STR(__rcu_read_lock) },
	{ 0xa265d7ff, __VMLINUX_SYMBOL_STR(ip_tunnel_init) },
	{ 0x96c30ce9, __VMLINUX_SYMBOL_STR(kfree_skb) },
	{ 0xdb3f88f4, __VMLINUX_SYMBOL_STR(ip_tunnel_xmit) },
	{ 0xb5430fd3, __VMLINUX_SYMBOL_STR(iptunnel_handle_offloads) },
	{ 0x67c2fa54, __VMLINUX_SYMBOL_STR(__copy_to_user) },
	{ 0xf01eadb4, __VMLINUX_SYMBOL_STR(ip_tunnel_ioctl) },
	{ 0xfbc74f64, __VMLINUX_SYMBOL_STR(__copy_from_user) },
	{ 0x5553be19, __VMLINUX_SYMBOL_STR(ip_tunnel_setup) },
	{ 0x7e8ef72e, __VMLINUX_SYMBOL_STR(ip_tunnel_newlink) },
	{ 0x2cef9a63, __VMLINUX_SYMBOL_STR(ip_tunnel_changelink) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0x53d559c3, __VMLINUX_SYMBOL_STR(nla_put) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=ip_tunnel,tunnel4";

