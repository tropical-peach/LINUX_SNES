cmd_arch/arm/mach-zynq/suspend.o := arm-xilinx-linux-gnueabi-gcc -Wp,-MD,arch/arm/mach-zynq/.suspend.o.d  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include -Iarch/arm/include/generated  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include -Iinclude -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi -Iinclude/generated/uapi -include /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -Wa,-march=armv7-a -mcpu=cortex-a9   -c -o arch/arm/mach-zynq/suspend.o /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/mach-zynq/suspend.S

source_arch/arm/mach-zynq/suspend.o := /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/mach-zynq/suspend.S

deps_arch/arm/mach-zynq/suspend.o := \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/linkage.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/stringify.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/asm/linkage.h \

arch/arm/mach-zynq/suspend.o: $(deps_arch/arm/mach-zynq/suspend.o)

$(deps_arch/arm/mach-zynq/suspend.o):
