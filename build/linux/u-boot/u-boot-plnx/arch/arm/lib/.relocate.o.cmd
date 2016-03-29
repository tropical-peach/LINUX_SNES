cmd_arch/arm/lib/relocate.o := arm-xilinx-linux-gnueabi-gcc -Wp,-MD,arch/arm/lib/.relocate.o.d  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -Iinclude  -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x1fc00000 -D__ASSEMBLY__ -g -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -fno-strict-aliasing -mno-unaligned-access -mfpu=neon -pipe   -c -o arch/arm/lib/relocate.o /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/lib/relocate.S

source_arch/arm/lib/relocate.o := /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/lib/relocate.S

deps_arch/arm/lib/relocate.o := \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/linux/linkage.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include/asm/linkage.h \

arch/arm/lib/relocate.o: $(deps_arch/arm/lib/relocate.o)

$(deps_arch/arm/lib/relocate.o):
