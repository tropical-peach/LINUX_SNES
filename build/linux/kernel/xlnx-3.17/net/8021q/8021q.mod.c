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
	{ 0xbd9c8b16, __VMLINUX_SYMBOL_STR(register_netdevice) },
	{ 0xa31b6f58, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0xfbc74f64, __VMLINUX_SYMBOL_STR(__copy_from_user) },
	{ 0x18026e92, __VMLINUX_SYMBOL_STR(dev_change_flags) },
	{ 0x5621bc25, __VMLINUX_SYMBOL_STR(dev_mc_unsync) },
	{ 0x1777bf4d, __VMLINUX_SYMBOL_STR(single_open) },
	{ 0x67c2fa54, __VMLINUX_SYMBOL_STR(__copy_to_user) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x60a13e90, __VMLINUX_SYMBOL_STR(rcu_barrier) },
	{ 0xd0e4b785, __VMLINUX_SYMBOL_STR(dev_get_nest_level) },
	{ 0xe91ecab, __VMLINUX_SYMBOL_STR(vlan_dev_vlan_id) },
	{ 0xd62cf67a, __VMLINUX_SYMBOL_STR(dev_uc_add) },
	{ 0xfa58cc5c, __VMLINUX_SYMBOL_STR(single_release) },
	{ 0x2931d827, __VMLINUX_SYMBOL_STR(seq_puts) },
	{ 0xc7a4fbed, __VMLINUX_SYMBOL_STR(rtnl_lock) },
	{ 0xecfc204c, __VMLINUX_SYMBOL_STR(vlan_uses_dev) },
	{ 0x6f6570f3, __VMLINUX_SYMBOL_STR(netif_carrier_on) },
	{ 0xd3f57a2, __VMLINUX_SYMBOL_STR(_find_next_bit_le) },
	{ 0x46cb482, __VMLINUX_SYMBOL_STR(seq_printf) },
	{ 0xd2da1048, __VMLINUX_SYMBOL_STR(register_netdevice_notifier) },
	{ 0xf81ce071, __VMLINUX_SYMBOL_STR(netif_carrier_off) },
	{ 0x9b8660f2, __VMLINUX_SYMBOL_STR(remove_proc_entry) },
	{ 0x50c89f23, __VMLINUX_SYMBOL_STR(__alloc_percpu) },
	{ 0xf01f28c2, __VMLINUX_SYMBOL_STR(dev_set_allmulti) },
	{ 0x54d37de5, __VMLINUX_SYMBOL_STR(vlan_vid_del) },
	{ 0xa1485f21, __VMLINUX_SYMBOL_STR(call_netdevice_notifiers) },
	{ 0x9a66e417, __VMLINUX_SYMBOL_STR(linkwatch_fire_event) },
	{ 0xe62da4ec, __VMLINUX_SYMBOL_STR(vlan_vid_add) },
	{ 0x8905b916, __VMLINUX_SYMBOL_STR(seq_read) },
	{ 0xc9ec4e21, __VMLINUX_SYMBOL_STR(free_percpu) },
	{ 0x9d0d6206, __VMLINUX_SYMBOL_STR(unregister_netdevice_notifier) },
	{ 0xe2d5255a, __VMLINUX_SYMBOL_STR(strcmp) },
	{ 0x2f3b75a9, __VMLINUX_SYMBOL_STR(proc_remove) },
	{ 0xf5862e60, __VMLINUX_SYMBOL_STR(vlan_ioctl_set) },
	{ 0xab26cf68, __VMLINUX_SYMBOL_STR(PDE_DATA) },
	{ 0xfe7c4287, __VMLINUX_SYMBOL_STR(nr_cpu_ids) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0x8095fca3, __VMLINUX_SYMBOL_STR(unregister_pernet_subsys) },
	{ 0x9fdecc31, __VMLINUX_SYMBOL_STR(unregister_netdevice_many) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x55cd4297, __VMLINUX_SYMBOL_STR(ethtool_op_get_link) },
	{ 0xd2936c14, __VMLINUX_SYMBOL_STR(ns_capable) },
	{ 0x7350b6c0, __VMLINUX_SYMBOL_STR(__ethtool_get_settings) },
	{ 0xe645ad54, __VMLINUX_SYMBOL_STR(free_netdev) },
	{ 0x328a05f1, __VMLINUX_SYMBOL_STR(strncpy) },
	{ 0x53d559c3, __VMLINUX_SYMBOL_STR(nla_put) },
	{ 0xbb6d1b33, __VMLINUX_SYMBOL_STR(netdev_upper_dev_unlink) },
	{ 0x73e20c1c, __VMLINUX_SYMBOL_STR(strlcpy) },
	{ 0xf62ad60f, __VMLINUX_SYMBOL_STR(skb_push) },
	{ 0xc1c0d474, __VMLINUX_SYMBOL_STR(proc_mkdir_data) },
	{ 0x2c2dcaa8, __VMLINUX_SYMBOL_STR(seq_release_net) },
	{ 0xcbc9234f, __VMLINUX_SYMBOL_STR(netif_stacked_transfer_operstate) },
	{ 0x2469810f, __VMLINUX_SYMBOL_STR(__rcu_read_unlock) },
	{ 0x6542c46b, __VMLINUX_SYMBOL_STR(init_net) },
	{ 0x764677d2, __VMLINUX_SYMBOL_STR(rtnl_link_unregister) },
	{ 0x1794a257, __VMLINUX_SYMBOL_STR(__dev_get_by_index) },
	{ 0x347013de, __VMLINUX_SYMBOL_STR(nla_validate) },
	{ 0xa4af0b36, __VMLINUX_SYMBOL_STR(kmem_cache_alloc) },
	{ 0xbbea21b2, __VMLINUX_SYMBOL_STR(arp_find) },
	{ 0xd3e6f60d, __VMLINUX_SYMBOL_STR(cpu_possible_mask) },
	{ 0x90b3e04d, __VMLINUX_SYMBOL_STR(eth_header_parse) },
	{ 0x6b2dc060, __VMLINUX_SYMBOL_STR(dump_stack) },
	{ 0x111c16e1, __VMLINUX_SYMBOL_STR(alloc_netdev_mqs) },
	{ 0x472691b3, __VMLINUX_SYMBOL_STR(register_pernet_subsys) },
	{ 0x4e8dd8a9, __VMLINUX_SYMBOL_STR(netdev_upper_dev_link) },
	{ 0x6f81f387, __VMLINUX_SYMBOL_STR(ether_setup) },
	{ 0xce1a7dfa, __VMLINUX_SYMBOL_STR(dev_uc_unsync) },
	{ 0xb673d8ad, __VMLINUX_SYMBOL_STR(__dev_get_by_name) },
	{ 0x341dbfa3, __VMLINUX_SYMBOL_STR(__per_cpu_offset) },
	{ 0x33dcc27a, __VMLINUX_SYMBOL_STR(unregister_netdevice_queue) },
	{ 0x153d5cee, __VMLINUX_SYMBOL_STR(netdev_warn) },
	{ 0xac0bd7b4, __VMLINUX_SYMBOL_STR(proc_create_data) },
	{ 0xa6d19c2a, __VMLINUX_SYMBOL_STR(eth_validate_addr) },
	{ 0x3c19439a, __VMLINUX_SYMBOL_STR(seq_lseek) },
	{ 0xce25cb4d, __VMLINUX_SYMBOL_STR(dev_set_promiscuity) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x9d669763, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0xbe584720, __VMLINUX_SYMBOL_STR(seq_open_net) },
	{ 0xb15380fb, __VMLINUX_SYMBOL_STR(rtnl_link_register) },
	{ 0x2a364cd1, __VMLINUX_SYMBOL_STR(dev_uc_del) },
	{ 0xe21cf4e9, __VMLINUX_SYMBOL_STR(dev_uc_sync) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0xb81960ca, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0xadc843cc, __VMLINUX_SYMBOL_STR(netdev_update_features) },
	{ 0x85670f1d, __VMLINUX_SYMBOL_STR(rtnl_is_locked) },
	{ 0xd9c88bd, __VMLINUX_SYMBOL_STR(dev_queue_xmit) },
	{ 0x8d522714, __VMLINUX_SYMBOL_STR(__rcu_read_lock) },
	{ 0x60da83ef, __VMLINUX_SYMBOL_STR(dev_mc_sync) },
	{ 0x6e720ff2, __VMLINUX_SYMBOL_STR(rtnl_unlock) },
	{ 0xd2283ca5, __VMLINUX_SYMBOL_STR(dev_get_stats) },
	{ 0xc9a395d2, __VMLINUX_SYMBOL_STR(dev_set_mtu) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "57B5C1B295C98EB47061F84");
