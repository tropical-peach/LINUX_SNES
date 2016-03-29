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
	{ 0x33ba5cd4, __VMLINUX_SYMBOL_STR(param_ops_bool) },
	{ 0xc85310c6, __VMLINUX_SYMBOL_STR(ip_tunnel_get_stats64) },
	{ 0xb15380fb, __VMLINUX_SYMBOL_STR(rtnl_link_register) },
	{ 0x7ad0a1d3, __VMLINUX_SYMBOL_STR(xfrm4_tunnel_register) },
	{ 0xf0c94af5, __VMLINUX_SYMBOL_STR(register_pernet_device) },
	{ 0x60a13e90, __VMLINUX_SYMBOL_STR(rcu_barrier) },
	{ 0x377a27e5, __VMLINUX_SYMBOL_STR(unregister_pernet_device) },
	{ 0xcb31a355, __VMLINUX_SYMBOL_STR(xfrm4_tunnel_deregister) },
	{ 0x764677d2, __VMLINUX_SYMBOL_STR(rtnl_link_unregister) },
	{ 0xa31b6f58, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0xc6cbbc89, __VMLINUX_SYMBOL_STR(capable) },
	{ 0xa4af0b36, __VMLINUX_SYMBOL_STR(kmem_cache_alloc) },
	{ 0x9469482, __VMLINUX_SYMBOL_STR(kfree_call_rcu) },
	{ 0xbc10dd97, __VMLINUX_SYMBOL_STR(__put_user_4) },
	{ 0x12da5bb2, __VMLINUX_SYMBOL_STR(__kmalloc) },
	{ 0x67c2fa54, __VMLINUX_SYMBOL_STR(__copy_to_user) },
	{ 0xd2936c14, __VMLINUX_SYMBOL_STR(ns_capable) },
	{ 0xfbc74f64, __VMLINUX_SYMBOL_STR(__copy_from_user) },
	{ 0x8ee385b, __VMLINUX_SYMBOL_STR(netdev_state_change) },
	{ 0x609f1c7e, __VMLINUX_SYMBOL_STR(synchronize_net) },
	{ 0xde70b9da, __VMLINUX_SYMBOL_STR(ip_tunnel_dst_reset_all) },
	{ 0x32ddd5b6, __VMLINUX_SYMBOL_STR(call_rcu) },
	{ 0x6b2dc060, __VMLINUX_SYMBOL_STR(dump_stack) },
	{ 0x85670f1d, __VMLINUX_SYMBOL_STR(rtnl_is_locked) },
	{ 0x8049cca, __VMLINUX_SYMBOL_STR(ipv6_chk_prefix) },
	{ 0xb62458aa, __VMLINUX_SYMBOL_STR(netif_rx) },
	{ 0xc171002e, __VMLINUX_SYMBOL_STR(skb_scrub_packet) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xb3320f2e, __VMLINUX_SYMBOL_STR(ipv6_chk_custom_prefix) },
	{ 0x5e270160, __VMLINUX_SYMBOL_STR(sock_wfree) },
	{ 0x5a50f3ab, __VMLINUX_SYMBOL_STR(iptunnel_xmit) },
	{ 0xd5ef46, __VMLINUX_SYMBOL_STR(consume_skb) },
	{ 0x26cf99b8, __VMLINUX_SYMBOL_STR(skb_realloc_headroom) },
	{ 0x175f4b26, __VMLINUX_SYMBOL_STR(neigh_destroy) },
	{ 0xd542439, __VMLINUX_SYMBOL_STR(__ipv6_addr_type) },
	{ 0xf6ebc03b, __VMLINUX_SYMBOL_STR(net_ratelimit) },
	{ 0xdb3f88f4, __VMLINUX_SYMBOL_STR(ip_tunnel_xmit) },
	{ 0xb5430fd3, __VMLINUX_SYMBOL_STR(iptunnel_handle_offloads) },
	{ 0x7d11c268, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0xccb3fa8d, __VMLINUX_SYMBOL_STR(icmpv6_send) },
	{ 0xa9dc4a9, __VMLINUX_SYMBOL_STR(rt6_lookup) },
	{ 0xaf1ae56f, __VMLINUX_SYMBOL_STR(skb_pull) },
	{ 0xdf6375f7, __VMLINUX_SYMBOL_STR(__pskb_pull_tail) },
	{ 0x7208bc1b, __VMLINUX_SYMBOL_STR(skb_clone) },
	{ 0x7360e645, __VMLINUX_SYMBOL_STR(ipv4_redirect) },
	{ 0x13865641, __VMLINUX_SYMBOL_STR(ipv4_update_pmtu) },
	{ 0xa03f14ff, __VMLINUX_SYMBOL_STR(ip_tunnel_rcv) },
	{ 0xb8a53333, __VMLINUX_SYMBOL_STR(iptunnel_pull_header) },
	{ 0x96c30ce9, __VMLINUX_SYMBOL_STR(kfree_skb) },
	{ 0x57b737c3, __VMLINUX_SYMBOL_STR(__xfrm_policy_check) },
	{ 0xb3ddf539, __VMLINUX_SYMBOL_STR(register_netdev) },
	{ 0x6e720ff2, __VMLINUX_SYMBOL_STR(rtnl_unlock) },
	{ 0x9fdecc31, __VMLINUX_SYMBOL_STR(unregister_netdevice_many) },
	{ 0xc7a4fbed, __VMLINUX_SYMBOL_STR(rtnl_lock) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x111c16e1, __VMLINUX_SYMBOL_STR(alloc_netdev_mqs) },
	{ 0x73e20c1c, __VMLINUX_SYMBOL_STR(strlcpy) },
	{ 0xe645ad54, __VMLINUX_SYMBOL_STR(free_netdev) },
	{ 0x341dbfa3, __VMLINUX_SYMBOL_STR(__per_cpu_offset) },
	{ 0xfe7c4287, __VMLINUX_SYMBOL_STR(nr_cpu_ids) },
	{ 0xd3e6f60d, __VMLINUX_SYMBOL_STR(cpu_possible_mask) },
	{ 0xe914e41e, __VMLINUX_SYMBOL_STR(strcpy) },
	{ 0xbd9c8b16, __VMLINUX_SYMBOL_STR(register_netdevice) },
	{ 0xc9ec4e21, __VMLINUX_SYMBOL_STR(free_percpu) },
	{ 0xd3f57a2, __VMLINUX_SYMBOL_STR(_find_next_bit_le) },
	{ 0x50c89f23, __VMLINUX_SYMBOL_STR(__alloc_percpu) },
	{ 0x1794a257, __VMLINUX_SYMBOL_STR(__dev_get_by_index) },
	{ 0x7a234c96, __VMLINUX_SYMBOL_STR(dst_release) },
	{ 0x32c4d335, __VMLINUX_SYMBOL_STR(ip_route_output_flow) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0x6542c46b, __VMLINUX_SYMBOL_STR(init_net) },
	{ 0x33dcc27a, __VMLINUX_SYMBOL_STR(unregister_netdevice_queue) },
	{ 0x2469810f, __VMLINUX_SYMBOL_STR(__rcu_read_unlock) },
	{ 0x8d522714, __VMLINUX_SYMBOL_STR(__rcu_read_lock) },
	{ 0x53d559c3, __VMLINUX_SYMBOL_STR(nla_put) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=tunnel4,ip_tunnel,ipv6";

