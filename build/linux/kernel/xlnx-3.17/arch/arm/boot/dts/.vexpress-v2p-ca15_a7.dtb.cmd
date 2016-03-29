cmd_arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb := arm-xilinx-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.d.pre.tmp -nostdinc -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts/include -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.dts.tmp /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb -b 0 -i /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts/  -d arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.d.dtc.tmp arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.dts.tmp ; cat arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.d.pre.tmp arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.d.dtc.tmp > arch/arm/boot/dts/.vexpress-v2p-ca15_a7.dtb.d

source_arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb := /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts

deps_arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb := \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi \

arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb: $(deps_arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb)

$(deps_arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb):
