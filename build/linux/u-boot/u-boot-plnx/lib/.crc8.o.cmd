cmd_lib/crc8.o := arm-xilinx-linux-gnueabi-gcc -Wp,-MD,lib/.crc8.o.d  -nostdinc -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include -Iinclude  -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include  -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/lib -Ilib -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x1fc00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -fno-strict-aliasing -mno-unaligned-access -mfpu=neon -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(crc8)"  -D"KBUILD_MODNAME=KBUILD_STR(crc8)" -c -o lib/crc8.o /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/lib/crc8.c

source_lib/crc8.o := /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/lib/crc8.c

deps_lib/crc8.o := \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/linux/crc8.h \

lib/crc8.o: $(deps_lib/crc8.o)

$(deps_lib/crc8.o):
