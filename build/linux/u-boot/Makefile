ifndef PETALINUX
$(error "Error: PETALINUX environment variable not set.  Change to the root of your PetaLinux install, and source the settings.sh file")
endif

TYPE:=u-boot

dir_u_boot_y:=

include Makefile.autoinclude

ifndef PROOT
$(error "Failed to build $(TYPE). No PetaLinux project is specified")
endif

ifndef INSTANCE
$(error "Failed to build $(TYPE). No instance is specified")
endif

ifndef CONFIGROOT
$(error "Failed to build $(INSTANCE). No configuration root directory is specified")
endif

ifndef IMAGEROOT
$(error "Failed to build $(INSTANCE). No image directory is specified")
endif

ifndef SUBSYSTEM_CONFIG
$(error "Failed to build $(INSTANCE). No subsystem configuration file is specified")
endif

ifndef HW_DESCRIPTION
$(error "Failed to build $(INSTANCE). No hw-description is sepecified")
endif

include $(PETALINUX)/etc/build/common.mk

ifndef ARCH
$(error "Failed to build $(INSTANCE). No ARCH specified!")
endif

ifndef ENDIAN
$(error "Failed to build $(INSTANCE). No endian specified")
endif

dir_y:=$(dir_u_boot_y)
ifeq ($(dir_y),)
$(error "Failed to build U-Boot. No selected U-Boot")
endif


UBOOTSRC:=$(firstword $(dir_y))
BUILDROOT:=$(CURDIR)
UBOOTOUT:=$(BUILDROOT)/$(shell basename $(UBOOTSRC))

include $(PETALINUX)/etc/build/common.mk

UBOOT_VENDOR=xilinx
ifeq ($(ARCH),microblaze)
UBOOT_PLATFORM=microblaze-generic
UBOOT_BOARD=microblaze-generic
else
ifeq ($(ARCH),arm)
UBOOT_PLATFORM=zynq_zc70x
UBOOT_BOARD=zynq
else
$(error "Failed to build $(INSTANCE), unknown ARCH: $(ARCH)")
endif
endif

UBOOT_CONFIG=$(shell grep "^CONFIG_SUBSYSTEM_UBOOT_CONFIG_TARGET=" $(SUBSYSTEM_CONFIG) | cut -d "=" -f 2)

ifneq ($(UBOOT_CONFIG),)
UBOOT_PLATFORM:=$(subst ",,$(UBOOT_CONFIG))
endif

UBOOTBUILDSRC=$(BUILDROOT)/src/$(shell basename $(UBOOTSRC))
UBOOT_BOARD_DIR=$(UBOOTBUILDSRC)/board/$(UBOOT_VENDOR)/$(UBOOT_BOARD)
UBOOT_GENERIC_CONFIG_H=platform_top.h

UBOOT_HSM_TCL_SCRIPT=$(PETALINUX)/etc/hsm/scripts/petalinux_hsm_bridge.tcl

MAKEUBOOT=$(MAKE) O=$(UBOOTOUT) -C $(UBOOTBUILDSRC) -j$(HOST_NCPU)

.PHONY: all build pre-build post-build config pre-config post-config clean distclean mrproper

all: build post-build

.PHONY: autogen-configs
autogen-headers:

oldconfig:
config:

autogen-headers:
	@$(call do_info,"generate $(INSTANCE) board header files")
	hsi -mode batch -source $(UBOOT_HSM_TCL_SCRIPT) -notrace -nojournal -nolog -tclargs "-c $(SUBSYSTEM_CONFIG) -a u-boot_bsp -hdf $(SYSTEM_HDF) -o $(UBOOT_CONFIGDIR) -d $(PETALINUX)/etc/hsm/data"
	# remove tail spaces
	sed -i 's: \+$$::g' $(UBOOT_CONFIGDIR)/platform-auto.h

pre-build:

build:$(UBOOTOUT)/u-boot

post-build:

$(UBOOTOUT)/include/config.h:$(UBOOTBUILDSRC) $(UBOOTOUT)
	@$(call do_info,"generate $(INSTANCE) configuration files")
	$(MAKE) O=$(UBOOTOUT) -C $(UBOOTBUILDSRC) -j$(HOST_NCPU) $(UBOOT_PLATFORM)_config || exit 255

clean:
	@$(call do_info, "$@ $(INSTANCE)")
	$(MAKEUBOOT) $@

mrproper distclean:

$(UBOOTOUT)/u-boot: $(UBOOTOUT) $(UBOOTBUILDSRC) $(UBOOTOUT)/include/config.h
	@$(call do_info,"build $(INSTANCE)")
	$(MAKEUBOOT) all

.PHONY: $(UBOOTBUILDSRC)
$(UBOOTBUILDSRC): $(UBOOTSRC)
	@$(call do_info, "update $(INSTANCE) source")
	if [ ! -d "$(UBOOTBUILDSRC)" ]; then \
		mkdir -p "$(UBOOTBUILDSRC)"; \
	fi; \
	rsync -a --cvs-exclude --filter=':C .git/' "$(UBOOTSRC)"/ "$(UBOOTBUILDSRC)"/
ifeq ($(UBOOT_CONFIG),)
	chmod -R a+w "$(UBOOTBUILDSRC)"/include/configs
	if [ -f "$(UBOOT_CONFIGDIR)/config.mk" ]; then \
		rsync "$(UBOOT_CONFIGDIR)/config.mk"  "$(UBOOT_BOARD_DIR)/config.mk"; \
	fi
	if [ -f "$(UBOOT_CONFIGDIR)/platform-top.h" ]; then \
		rsync "$(UBOOT_CONFIGDIR)"/*.h "$(UBOOTBUILDSRC)/include/configs"/; \
		mv "$(UBOOTBUILDSRC)/include/configs/platform-top.h"  "$(UBOOTBUILDSRC)/include/configs/$(UBOOT_PLATFORM).h"; \
	fi
	if [ -f "$(PROOT)/subsystems/$(HW_DESCRIPTION)/ps7_init.c" ]; then \
		rsync "$(HW_DESCRIPTION)/ps7_init.c"  "$(UBOOT_BOARD_DIR)"/; \
	fi
	if [ -f "$(PROOT)/subsystems/$(HW_DESCRIPTION)/ps7_init.h" ]; then \
		rsync "$(HW_DESCRIPTION)/ps7_init.h"  "$(UBOOT_BOARD_DIR)"/; \
	fi
endif

pre-install:
install:$(IMAGEROOT) $(UBOOTOUT)/u-boot
	@$(call do_info,"$@ $(INSTANCE)")
	cp $(UBOOTOUT)/u-boot.srec $(IMAGEROOT); \
	cp $(UBOOTOUT)/u-boot.bin $(IMAGEROOT); \
	cp $(UBOOTOUT)/u-boot $(IMAGEROOT)/u-boot.elf
post-install:

.PHONY: %_only
%_only: $(UBOOTBUILDSRC)
	$(eval TARGET:=$(subst _only,,$@))
	@$(call do_info,"$(TARGET) $(INSTANCE)")
	$(MAKEUBOOT) $(TARGET)

$(IMAGEROOT):
	mkdir -p "$@"

$(UBOOTOUT):
	mkdir -p "$@"

help:
	@echo ""
	@echo "Quick reference for various supported build targets for u-boot."
	@echo "----------------------------------------------------"
	@echo "  clean               clean out compiled files, but not config"
	@echo "  distclean           clean out all build files"
	@echo "  build               build u-boot"
	@echo "  install               install u-boot images to images/ directory"
	@echo "  <UBOOT_TARGET>_only make a specific u-boot target"
	@echo "  all                 configure build environment and build"
