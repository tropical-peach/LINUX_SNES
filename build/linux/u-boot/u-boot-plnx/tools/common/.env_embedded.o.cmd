cmd_tools/common/env_embedded.o := gcc -Wp,-MD,tools/common/.env_embedded.o.d -Itools -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -include /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/libfdt_env.h -idirafterinclude -idirafter/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include -idirafter/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include   -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/lib/libfdt   -I/home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/tools -DCONFIG_SYS_TEXT_BASE=0x1fc00000 -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -c -o tools/common/env_embedded.o tools/common/env_embedded.c

source_tools/common/env_embedded.o := tools/common/env_embedded.c

deps_tools/common/env_embedded.o := \
  /usr/include/stdc-predef.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/libfdt_env.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/compiler.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/include/errno.h \
  /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h \
  /usr/include/xlocale.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/time.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/sigset.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/stdio.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  /usr/include/string.h \
  /usr/include/x86_64-linux-gnu/bits/string.h \
  /usr/include/x86_64-linux-gnu/bits/string2.h \
  /usr/include/x86_64-linux-gnu/bits/string3.h \
  /usr/include/x86_64-linux-gnu/sys/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman-linux.h \
  /usr/include/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h \
  /usr/include/x86_64-linux-gnu/bits/uio.h \
  /usr/include/x86_64-linux-gnu/bits/stat.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl2.h \
  /usr/include/byteswap.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  /usr/include/linux/posix_types.h \
  /usr/include/linux/stddef.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types_64.h \
  /usr/include/asm-generic/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/bitsperlong.h \
  /usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /usr/include/x86_64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdbool.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/common/env_embedded.c \
    $(wildcard include/config/build/envcrc.h) \
    $(wildcard include/config/sys/use/ppcenv.h) \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/env/offset.h) \
  include/config.h \
    $(wildcard include/config/sys/arch.h) \
    $(wildcard include/config/sys/cpu.h) \
    $(wildcard include/config/sys/board.h) \
    $(wildcard include/config/sys/vendor.h) \
    $(wildcard include/config/sys/soc.h) \
    $(wildcard include/config/boarddir.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/config_cmd_defaults.h \
    $(wildcard include/config/cmd/defaults/h/.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/crc32.h) \
    $(wildcard include/config/cmd/exportenv.h) \
    $(wildcard include/config/cmd/go.h) \
    $(wildcard include/config/cmd/importenv.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
    $(wildcard include/config/partitions.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/configs/zynq_zc70x.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/configs/platform-auto.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/sys/generic/board.h) \
    $(wildcard include/config/zynq/ps/clk/freq.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/serial/multi.h) \
    $(wildcard include/config/sys/console/is/in/env.h) \
    $(wildcard include/config/hostname.h) \
    $(wildcard include/config/cpu/freq/hz.h) \
    $(wildcard include/config/armv7.h) \
    $(wildcard include/config/zynq.h) \
    $(wildcard include/config/cmd/cache.h) \
    $(wildcard include/config/sys/l2cache/off.h) \
    $(wildcard include/config/clocks.h) \
    $(wildcard include/config/cmd/clk.h) \
    $(wildcard include/config/sys/cacheline/size.h) \
    $(wildcard include/config/sys/ldscript.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/sdram/size.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/sys/init/ram/addr.h) \
    $(wildcard include/config/sys/init/ram/size.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/zynq/serial.h) \
    $(wildcard include/config/zynq/serial/uart1.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/zynq/gem0.h) \
    $(wildcard include/config/zynq/gem/phy/addr0.h) \
    $(wildcard include/config/zynq/gem.h) \
    $(wildcard include/config/sys/fault/echo/link/down.h) \
    $(wildcard include/config/sys/enet.h) \
    $(wildcard include/config/phylib.h) \
    $(wildcard include/config/mii.h) \
    $(wildcard include/config/phy/gige.h) \
    $(wildcard include/config/phy/marvell.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/net/multi.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/bootp/may/fail.h) \
    $(wildcard include/config/netconsole.h) \
    $(wildcard include/config/ethaddr.h) \
    $(wildcard include/config/serverip.h) \
    $(wildcard include/config/ipaddr.h) \
    $(wildcard include/config/sf/default/speed.h) \
    $(wildcard include/config/zynq/qspi.h) \
    $(wildcard include/config/sf/dual/flash.h) \
    $(wildcard include/config/cmd/spi.h) \
    $(wildcard include/config/cmd/sf.h) \
    $(wildcard include/config/sys/no/flash.h) \
    $(wildcard include/config/spi/flash.h) \
    $(wildcard include/config/spi/flash/spansion.h) \
    $(wildcard include/config/spi/flash/stmicro.h) \
    $(wildcard include/config/spi/flash/winbond.h) \
    $(wildcard include/config/spi/flash/bar.h) \
    $(wildcard include/config/env/is/in/spi/flash.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/zynq/sdhci0.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/generic/mmc.h) \
    $(wildcard include/config/sdhci.h) \
    $(wildcard include/config/zynq/sdhci.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/support/vfat.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/fat/write.h) \
    $(wildcard include/config/fpga.h) \
    $(wildcard include/config/fpga/xilinx.h) \
    $(wildcard include/config/fpga/zynqpl.h) \
    $(wildcard include/config/cmd/fpga.h) \
    $(wildcard include/config/fpga/loadfs.h) \
    $(wildcard include/config/bootp/serverip.h) \
    $(wildcard include/config/bootp/bootfilesize.h) \
    $(wildcard include/config/bootp/bootpath.h) \
    $(wildcard include/config/bootp/gateway.h) \
    $(wildcard include/config/bootp/hostname.h) \
    $(wildcard include/config/cmd/askenv.h) \
    $(wildcard include/config/cmd/echo.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/cmd/saves.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/sys/usr/excep.h) \
    $(wildcard include/config/sys/hz.h) \
    $(wildcard include/config/sys/hush/parser.h) \
    $(wildcard include/config/sys/prompt/hush/ps2.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/bootargs.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/fit.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/fit/verbose.h) \
    $(wildcard include/config/sys/bootmapsz.h) \
    $(wildcard include/config/preboot.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/bootcommand.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/config_cmd_default.h \
    $(wildcard include/config/cmd/default/h.h) \
    $(wildcard include/config/cmd/bdi.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/console.h) \
    $(wildcard include/config/cmd/editenv.h) \
    $(wildcard include/config/cmd/imi.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/flash.h) \
    $(wildcard include/config/cmd/imls.h) \
    $(wildcard include/config/cmd/loadb.h) \
    $(wildcard include/config/cmd/loads.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/misc.h) \
    $(wildcard include/config/cmd/nfs.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/setgetdcr.h) \
    $(wildcard include/config/cmd/source.h) \
    $(wildcard include/config/cmd/ximg.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/sys/generic/global/data.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/static/rela.h) \
    $(wildcard include/config/fsl/lsch3.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/scsi.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/cmd/bmp.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/link/local.h) \
    $(wildcard include/config/cmd/rarp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/cmd/tftpput.h) \
    $(wildcard include/config/cmd/tftpsrv.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/environment.h \
    $(wildcard include/config/env/is/in/flash.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/sys/flash/base.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/env/size/redund.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/sys/redundand/environment.h) \
    $(wildcard include/config/env/is/embedded.h) \
    $(wildcard include/config/env/is/in/mmc.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/env/offset/oob.h) \
    $(wildcard include/config/env/is/in/ubi.h) \
    $(wildcard include/config/env/ubi/part.h) \
    $(wildcard include/config/env/ubi/volume.h) \
    $(wildcard include/config/env/ubi/volume/redund.h) \
    $(wildcard include/config/cmd/ubi.h) \
    $(wildcard include/config/env/is/in/onenand.h) \
    $(wildcard include/config/env/is/nowhere.h) \
    $(wildcard include/config/env/aes.h) \
    $(wildcard include/config/needs/manual/reloc.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/env_attr.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/env_callback.h \
    $(wildcard include/config/env/callback/list/static.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/splashimage/guard.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/env_flags.h \
    $(wildcard include/config/env/flags/list/static.h) \
    $(wildcard include/config/overwrite/ethaddr/once.h) \
    $(wildcard include/config/cmd/env/flags.h) \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/linker_lists.h \
  /usr/include/search.h \
  /home/steven/Desktop/LINUX_SNES/build/linux/u-boot/src/u-boot-plnx/include/linux/stringify.h \

tools/common/env_embedded.o: $(deps_tools/common/env_embedded.o)

$(deps_tools/common/env_embedded.o):
