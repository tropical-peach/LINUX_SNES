cmd_u-boot.lds := arm-xilinx-linux-gnueabi-gcc -E -Wp,-MD,./.u-boot.lds.d -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x1fc00000   -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -mword-relocations  -march=armv7-a  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -fno-strict-aliasing -mno-unaligned-access -mfpu=neon -pipe -Iinclude  -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -include /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/u-boot/u-boot.lds.h -DCPUDIR=arch/arm/cpu/armv7  -ansi -D__ASSEMBLY__ -x assembler-with-cpp -P -o u-boot.lds /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/cpu/armv7/zynq/u-boot.lds

source_u-boot.lds := /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/cpu/armv7/zynq/u-boot.lds

deps_u-boot.lds := \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/u-boot/u-boot.lds.h \

u-boot.lds: $(deps_u-boot.lds)

$(deps_u-boot.lds):
