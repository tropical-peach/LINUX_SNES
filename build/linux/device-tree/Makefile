ifndef PETALINUX
$(error "Error: PETALINUX environment variable not set.  Change to the root of your PetaLinux install, and source the settings.sh file")
endif

include $(PETALINUX)/etc/logging/logging.mk

TYPE:=device-tree

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

ifndef DTS_DIR
$(error "Failed to build $(INSTANCE). No DTS directory is sepecified")
endif

include $(PETALINUX)/etc/build/common.mk

DTG_TCL_SCRIPT=$(PETALINUX)/etc/hsm/scripts/petalinux_hsm_bridge.tcl

.PHONY: 

all: build install

pre-config:

oldconfig:
config:

.PHOHY: autogen-dts
autogen-dts:
	@$(call do_info, "generate DTS to $(DTS_DIR)")
	hsi -mode batch -source $(DTG_TCL_SCRIPT) -notrace -nojournal -nolog -tclargs "-c $(SUBSYSTEM_CONFIG) -a device-tree -hdf $(SYSTEM_HDF) -o $(DTS_DIR) -d $(PETALINUX)/etc/hsm/data"

post-config:

pre-build:

build: system.dtb

system.dtb: $(wildcard $(DTS_DIR)/*.dtsi) $(wildcard $(DTS_DIR)/*.dts) $(SUBSYSTEM_CONFIG)
	@$(call do_info, "build $@")
	padding_size=$$(grep "^CONFIG_SUBSYSTEM_DTB_PADDING_SIZE=" "$(SUBSYSTEM_CONFIG)" | cut -d "=" -f 2); \
	dtc -O dtb -o "$(CURDIR)/$@" -b 0 -p $$(($${padding_size})) -I dts -i "$(DTS_DIR)" "$(DTS_DIR)/system-top.dts" || exit 255

$(IMAGEROOT):
	mkdir -p $@

post-build:

pre-install:

install: system.dtb $(IMAGEROOT)
	@$(call do_info, "install $<")
	rsync system.dtb "$(IMAGEROOT)"/

post-install:

clean:
	rm -rf system.dtb

mrproper distclean:

help:
	@echo ""
	@echo "Quick reference for various supported build targets for $(INSTANCE)."
	@echo "----------------------------------------------------"
	@echo "  clean          clean out compiled files"
	@echo "  mrproper       clean out all non-distributed files"
	@echo "  distclean      clean out all non-distributed files"
	@echo "  build          build $(INSTANCE)"
	@echo "  all            build $(INSTANCE) and copy DTB to images/ directory"
