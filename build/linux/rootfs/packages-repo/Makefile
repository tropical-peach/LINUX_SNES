ifndef PETALINUX
$(error "Error: PETALINUX environment variable not set.  Change to the root of your PetaLinux install, and source the settings.sh file")
endif

TYPE:=packages-repo

include Makefile.autoinclude

ifndef PROOT
$(error "Failed to build $(TYPE). No PetaLinux project is specified")
endif

ifndef INSTANCE
$(error "Failed to build $(TYPE). No instance specified")
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

ifndef ROOTFS_CONFIG
$(error "Failed to build $(INSTANCE). No configuration file is specified")
endif

ifndef STAGEDIR
$(error "Failed to build $(INSTANCE). No stage directory is specified")
endif

ifndef TARGETDIR
$(error "Failed to build $(INSTANCE). No target directory is specified")
endif

ifndef TARGETINST
$(error "Failed to build $(INSTANCE). No installer is specified")
endif

include $(PETALINUX)/etc/build/common.mk
ifndef ARCH
$(error "Failed to build $(INSTANCE). No ARCH specified!")
endif

ifndef ENDIAN
$(error "Failed to build $(INSTANCE). No endian specified")
endif

include $(ROOTFS_CONFIG)

BUILDROOT:=$(CURDIR)
ifeq ($(dir_packages_repo_y),)
$(error "Failed to build Packages repo. No selected packages repo")
endif

PACKAGE_REPO_ROOT:=$(firstword $(dir_packages_repo_y))

APTCONFIG_TEMPLATE_ROOT=$(PETALINUX)/components/packages-repo/config
APTCONFIG_TEMPLATE=$(APTCONFIG_TEMPLATE_ROOT)/apt.conf.template

APTPATH=$(PETALINUX)/tools/packagemanager
KCONFIGDIR=$(PACKAGE_REPO_ROOT)/

STAGE_APTROOT=$(STAGEDIR)
STAGE_APTROOT_CONF=$(TARGETDIR)/.stage.apt
STAGE_APTCONFIG=$(STAGE_APTROOT_CONF)/etc/apt/apt.conf.d/apt.conf
TARGETROOT_APTROOT=$(BUILDROOT)/targetroot
TARGETROOT_APTROOT_CONF=$(TARGETDIR)/.targetroot.apt
TARGETROOT_APTCONFIG=$(TARGETROOT_APTROOT_CONF)/etc/apt/apt.conf.d/apt.conf

FALSEPATH=$(APTPATH)/bin:/usr/bin:/bin
FALSELDPATH=$(APTPATH)/lib:$(APTPATH)/lib/libfakeroot

FAKEROOT=$(APTPATH)/bin/fakeroot

STAGE_APTENV=PATH=$(STAGE_APTROOT_CONF)/usr/bin:$(STAGE_APTROOT_CONF)/usr/sbin:$(FALSEPATH) APT_CONFIG=$(STAGE_APTCONFIG) LD_LIBRARY_PATH=$(FALSELDPATH) D=$(STAGE_APTROOT) OPKG_OFFLINE_ROOT=$(STAGE_APTROOT) IPKG_OFFLINE_ROOT=$(STAGE_APTROOT)
STAGE_APTGET=$(STAGE_APTENV) $(FAKEROOT) apt-get
STAGE_APTCACHE=$(STAGE_APTENV) apt-cache

#Fixme we need to include right DPKG perl search path so that it will not
#use the default one which is used on the host. We should include the
#DPKG modules as well
PERL5LIB=

TARGETROOT_APTENV=PATH=$(TARGETROOT_APTROOT_CONF)/usr/bin:$(TARGETROOT_APTROOT_CONF)/usr/sbin:$(FALSEPATH) APT_CONFIG=$(TARGETROOT_APTCONFIG) LD_LIBRARY_PATH=$(FALSELDPATH) D=$(TARGETROOT_APTROOT) OPKG_OFFLINE_ROOT=$(TARGETROOT_APTROOT) IPKG_OFFLINE_ROOT=$(TARGETROOT_APTROOT)
TARGETROOT_APTGET=$(TARGETROOT_APTENV) $(FAKEROOT) apt-get
TARGETROOT_APTCACHE=$(TARGETROOT_APTENV) apt-cache
TARGETROOT_DPKG=$(TARGETROOT_APTENV) $(FAKEROOT) dpkg

dir_y :=
dir_n :=
dir_ :=

-include $(KCONFIGDIR)/Kconfig.mk

PACKAGES_DEV_HARDCODE=linux-libc-headers
ifeq ($(shell echo " $(PACKAGES) " | grep -e "libgcc-s1" 2>/dev/null),)
PACKAGES_DEV_HARDCODE+=libgcc-s-dev
endif

ifeq ($(shell echo " $(PACKAGES) " | grep -e "libstdc++6" 2>/dev/null),)
PACKAGES_DEV_HARDCODE+=libstdc++-dev
endif

PACKAGES=$(dir_y)
#FIXME: find if it has a dev package. Any better way?
PACKAGES_DEV=$(shell for i in $(PACKAGES); do if find $(PACKAGE_REPO_ROOT)/ -name "*$${i}*" | grep "$${i}-dev" > /dev/null; then dev_pkg="$${dev_pkg} $${i}-dev"; fi; done; echo $${dev_pkg};) $(PACKAGES) $(PACKAGES_DEV_HARDCODE)
#$(error "PACKAGES_DEV=$(PACKAGES_DEV),PACKAGE_REPO_ROOT=$(PACKAGE_REPO_ROOT)")

ARCH_DPKGNAME_CHECK=./scan-architecture.sh $(ARCH_CPUFLAGS)
ARCH_DPKGNAME=$(shell MACHINE=$(MACHINE) $(ARCH_DPKGNAME_CHECK))


create_dir = \
	for d in $(2); do \
		mkdir -p $(1)/$${d}; \
	done

rm_dir = \
	for d in $(2); do \
		rm -fr $(1)/$${d}; \
	done

.PHONY: all pre-build build post-build pre-install install post-install clean
all: build install

install: .pkg_rootfs
	# strip all the extracted packages in target root
	@for f in $$(find "$(TARGETROOT_APTROOT)" -type f); do \
		if file "$$f" | grep -q "ELF" ; then \
			$(STRIP) $$f; \
		fi; \
	done; \
	rsync -a "$(TARGETROOT_APTROOT)"/ "$(TARGETDIR)"/

pre-install:

post-install:

build: .pkg_stagefs

post-build:

pre-build:

config:

oldconfig:

clean:
	@$(call do_info,"Cleaning packages")
	@if [ -e "$(STAGE_APTROOT_CONF)" ]; then rm -rf $(STAGE_APTROOT_CONF); fi
	@if [ -e "$(TARGETROOT_APTROOT_CONF)" ]; then rm -rf $(TARGETROOT_APTROOT_CONF); fi
	@if [ -e "$(TARGETROOT_APTROOT)" ]; then rm -rf "$(TARGETROOT_APTROOT)"; fi

mrproper distclean:

.pkg_update: .stage_config .rootfs_config
	@$(call do_info,"Updating for $(ARCH_DPKGNAME)")
	@$(call do_info,"Updating package manager")
	$(STAGE_APTGET) update || exit 255
	$(TARGETROOT_APTGET) update || exit 255
	@touch "$@"

.pkg_stagefs: .stage_config .pkg_update
	@$(call do_info,"Expanding stagefs")
	@if [ ! -e $(STAGE_APTROOT) ]; then mkdir -p $(STAGE_APTROOT); fi
	@if [ ! -e $(STAGE_APTROOT)/etc/deb-postinsts ]; then mkdir -p $(STAGE_APTROOT)/etc/deb-postinsts; fi
	echo "########PACKAGES_DEV=$(PACKAGES_DEV)"
	$(STAGE_APTGET) install $(PACKAGES_DEV) --force-yes --allow-unauthenticated || exit 255
	@touch "$@"

.pkg_rootfs: .pkg_rootfs_expand
	@touch "$@"

.pkg_rootfs_expand: .rootfs_config .pkg_update
	@$(call do_info,"Expanding rootfs")
	@if [ ! -e $(TARGETROOT_APTROOT) ]; then mkdir -p $(TARGETROOT_APTROOT); fi
	@if [ ! -e $(TARGETROOT_APTROOT)/etc/deb-postinsts ]; then mkdir -p $(TARGETROOT_APTROOT)/etc/deb-postinsts; fi
	$(TARGETROOT_APTGET) install $(PACKAGES) --force-yes --allow-unauthenticated || exit 255
	$(TARGETROOT_APTGET) install run-postinsts --force-yes --allow-unauthenticated || exit 255
	$(TARGETROOT_DPKG) --root=$(TARGETROOT_APTROOT) --admindir=$(TARGETROOT_APTROOT)/var/lib/dpkg --configure -a --force-all || exit 255
	@touch "$@"

.pkg_rootfs_debug: .pkg_rootfs_expand $(ROOTFS_CONFIG_CHANGED)
	@if [ -e $(TARGETROOT_APTROOT)/etc/init.d/rc ]; then \
		sed 's/export VERBOSE.$/export VERBOSE=very/g' -i $(TARGETROOT_APTROOT)/etc/init.d/rc; \
	fi
	@touch "$@"

.stage_config: $(STAGE_APTCONFIG) $(ROOTFS_CONFIG_CHANGED)
	@$(call do_info,"Setting up stage config")
	@$(call create_dir, $(STAGE_APTROOT_CONF), /var/lib/dpkg/info /var/lib/dpkg/updates /var/lib/dpkg/alternatives /var/lib/apt/lists/partial /var/cache/apt/archives/partial /var/log/apt /etc/alternatives /var/lib/opkg/alternatives)
	@$(call create_dir, $(STAGE_APTROOT), /var/lib/dpkg/info /var/lib/dpkg/updates /var/lib/dpkg/alternatives)
	@if [ ! -e $(STAGE_APTROOT)/var/lib/dpkg/status ]; then touch $(STAGE_APTROOT)/var/lib/dpkg/status; fi
	@if [ ! -e $(STAGE_APTROOT)/var/lib/dpkg/available ]; then touch $(STAGE_APTROOT)/var/lib/dpkg/available; fi
	@$(call create_dir, $(STAGE_APTROOT_CONF), /usr/bin /usr/sbin)
	@ln -sf $(STAGE_APTROOT)/usr/sbin/update-rc.d $(STAGE_APTROOT_CONF)/usr/sbin/update-rc.d
	@ln -sf $(STAGE_APTROOT)/usr/bin/update-alternatives $(STAGE_APTROOT_CONF)/usr/bin/update-alternatives
	@touch "$@"

.rootfs_config: $(TARGETROOT_APTCONFIG) $(ROOTFS_CONFIG_CHANGED)
	@$(call do_info,"Setting up rootfs config")
	@$(call create_dir, $(TARGETROOT_APTROOT_CONF), /var/lib/dpkg/info /var/lib/dpkg/updates /var/lib/dpkg/alternatives /var/lib/apt/lists/partial /var/cache/apt/archives/partial /var/log/apt /etc/alternatives /var/lib/opkg/alternatives)
	@$(call create_dir, $(TARGETROOT_APTROOT), /var/lib/dpkg/info /var/lib/dpkg/updates /var/lib/dpkg/alternatives)
	@if [ ! -e $(TARGETROOT_APTROOT)/var/lib/dpkg/status ]; then touch $(TARGETROOT_APTROOT)/var/lib/dpkg/status; fi
	@if [ ! -e $(TARGETROOT_APTROOT)/var/lib/dpkg/available ]; then touch $(TARGETROOT_APTROOT)/var/lib/dpkg/available; fi
	@$(call create_dir, $(TARGETROOT_APTROOT_CONF), /usr/bin /usr/sbin)
	@ln -sf $(TARGETROOT_APTROOT)/usr/sbin/update-rc.d $(TARGETROOT_APTROOT_CONF)/usr/sbin/update-rc.d
	@ln -sf $(TARGETROOT_APTROOT)/usr/bin/update-alternatives $(TARGETROOT_APTROOT_CONF)/usr/bin/update-alternatives
	@touch "$@"

$(TARGETROOT_APTCONFIG): $(ROOTFS_CONFIG_CHANGED)
	$(ARCH_DPKGNAME_CHECK)
	mkdir -p $(TARGETROOT_APTROOT_CONF)/etc/apt/apt.conf.d
	mkdir -p $(TARGETROOT_APTROOT_CONF)/etc/apt/preferences.d
	cp $(APTCONFIG_TEMPLATE) $(TARGETROOT_APTCONFIG)
	sed s%#ROOTFS#%$(TARGETROOT_APTROOT)%g -i $(TARGETROOT_APTCONFIG)
	sed s%#ROOTFS_CONF#%$(TARGETROOT_APTROOT_CONF)%g -i $(TARGETROOT_APTCONFIG)
	sed s%#HOSTFS#%$(TARGETROOT_APTROOT)%g -i $(TARGETROOT_APTCONFIG)
	sed s%#HOSTBIN#%$(PETALINUX)/tools/packagemanager%g -i $(TARGETROOT_APTCONFIG)
	sed s%#ARCH#%$(ARCH_DPKGNAME)%g -i $(TARGETROOT_APTCONFIG)
	cp -f $(APTCONFIG_TEMPLATE_ROOT)/preferences.template $(TARGETROOT_APTROOT_CONF)/etc/apt/preferences.d/preferences
	cp -f $(APTCONFIG_TEMPLATE_ROOT)/sources.list.template $(TARGETROOT_APTROOT_CONF)/etc/apt/sources.list
	sed s%#CACHELOCAL#%$(PACKAGE_REPO_ROOT)%g -i $(TARGETROOT_APTROOT_CONF)/etc/apt/sources.list

$(STAGE_APTCONFIG): $(ROOTFS_CONFIG_CHANGED)
	$(ARCH_DPKGNAME_CHECK)
	mkdir -p $(STAGE_APTROOT_CONF)/etc/apt/apt.conf.d
	mkdir -p $(STAGE_APTROOT_CONF)/etc/apt/preferences.d
	cp $(APTCONFIG_TEMPLATE) $(STAGE_APTCONFIG)
	sed s%#ROOTFS#%$(STAGE_APTROOT)%g -i $(STAGE_APTCONFIG)
	sed s%#ROOTFS_CONF#%$(STAGE_APTROOT_CONF)%g -i $(STAGE_APTCONFIG)
	sed s%#HOSTFS#%$(STAGE_APTROOT)%g -i $(STAGE_APTCONFIG)
	sed s%#HOSTBIN#%$(PETALINUX)/tools/packagemanager%g -i $(STAGE_APTCONFIG)
	sed s%#ARCH#%$(ARCH_DPKGNAME)%g -i $(STAGE_APTCONFIG)
	cp -f $(APTCONFIG_TEMPLATE_ROOT)/preferences.template $(STAGE_APTROOT_CONF)/etc/apt/preferences.d/preferences
	cp -f $(APTCONFIG_TEMPLATE_ROOT)/sources.list.template $(STAGE_APTROOT_CONF)/etc/apt/sources.list
	sed s%#CACHELOCAL#%$(PACKAGE_REPO_ROOT)%g -i $(STAGE_APTROOT_CONF)/etc/apt/sources.list

$(ROOTFS_CONFIG_CHANGED):
	$(MAKE) -C "$(PROOT)/build/$(ROOTFS)" config_checksum

prune:

help:
	@echo ""
	@echo "Quick reference for various supported make commands for $(INSTANCE)."
	@echo "----------------------------------------------------"
	@echo "clean          clean out compiled files"
	@echo "build          install devel packages to stage directory"
	@echo "install        install packages target filesystem host copy"
