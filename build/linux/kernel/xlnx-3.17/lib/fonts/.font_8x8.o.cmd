cmd_lib/fonts/font_8x8.o := arm-xilinx-linux-gnueabi-gcc -Wp,-MD,lib/fonts/.font_8x8.o.d  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include -Iarch/arm/include/generated  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include -Iinclude -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi -Iinclude/generated/uapi -include /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/kconfig.h  -I/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/fonts -Ilib/fonts -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(font_8x8)"  -D"KBUILD_MODNAME=KBUILD_STR(font)" -c -o lib/fonts/.tmp_font_8x8.o /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/fonts/font_8x8.c

source_lib/fonts/font_8x8.o := /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/lib/fonts/font_8x8.c

deps_lib/fonts/font_8x8.o := \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/font.h \
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
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi/asm/posix_types.h \
  /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi/asm-generic/posix_types.h \

lib/fonts/font_8x8.o: $(deps_lib/fonts/font_8x8.o)

$(deps_lib/fonts/font_8x8.o):
