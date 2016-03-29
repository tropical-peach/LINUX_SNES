cmd_lib/fdt_empty_tree.o := arm-xilinx-linux-gnueabi-gcc -Wp,-MD,lib/.fdt_empty_tree.o.d  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include -Iarch/arm/include/generated  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include -Iinclude -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi -Iinclude/generated/uapi -include /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/kconfig.h  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib -Ilib -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt -Ilib/../scripts/dtc/libfdt    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(fdt_empty_tree)"  -D"KBUILD_MODNAME=KBUILD_STR(fdt_empty_tree)" -c -o lib/.tmp_fdt_empty_tree.o /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/fdt_empty_tree.c

source_lib/fdt_empty_tree.o := /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/fdt_empty_tree.c

deps_lib/fdt_empty_tree.o := \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/libfdt_env.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/types.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/asm/types.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/asm-generic/int-ll64.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/asm-generic/bitsperlong.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/asm-generic/bitsperlong.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/posix_types.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/stddef.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/stddef.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi/asm/posix_types.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/asm-generic/posix_types.h \
  /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include/stdarg.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/string.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/asm/string.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi/asm/byteorder.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/byteorder/little_endian.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/byteorder/little_endian.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/swab.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/linux/swab.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/asm/swab.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi/asm/swab.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/byteorder/generic.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/fdt_empty_tree.c \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/libfdt_env.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/fdt.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/libfdt.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/libfdt_env.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/../scripts/dtc/libfdt/libfdt_internal.h \

lib/fdt_empty_tree.o: $(deps_lib/fdt_empty_tree.o)

$(deps_lib/fdt_empty_tree.o):
