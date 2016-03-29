UWEB_DEMO_VER=1.4.3

ifndef PETALINUX
$(error You must source the petalinux/settings.sh script before working with PetaLinux)
endif

include apps.common.mk

APP = web

ifeq ($(ARCH),microblaze)
# Extract the any multilib path, but if it is '.' (ie no multilib), cut
# that back to an empty string
MULTIDIR=$(shell $(CC) $(CFLAGS) $(LDFLAGS) -print-multi-directory | tr -d '.' | tr '/' '-')
endif
# PPC uses hard coded multilib tag for now
ifeq ($(ARCH),powerpc)
MULTIDIR=ppc440
endif

ifeq ($(ARCH),arm)
MULTIDIR=arm
endif

ifneq ($(MULTIDIR),)
MULTI_TAG=$(MULTIDIR)-
endif

# little-endian packages have a slightly different naming scheme
ifeq ($(ENDIAN),little)
ENDIAN_TAG=el-
else
ENDIAN_TAG=
endif

WEB_BINARY=/home/httpd/cgi-bin/petalinux

# Add any other object files to this list below

all:

clean:


.PHONY: install image common app

common:
	tar -C $(TARGETDIR) -xzf petalinux-demo-$(UWEB_DEMO_VER)/petalinux-web-demo-common-$(UWEB_DEMO_VER).tar.gz

app:
	tar -C $(TARGETDIR) -xzf petalinux-demo-$(UWEB_DEMO_VER)/petalinux-web-demo-petalinux-$(ENDIAN_TAG)$(MULTI_TAG)$(UWEB_DEMO_VER).tar.gz

install: common app
	# Delete any existing inetd service binding to the http port
	sed -i -e '/^\<http\>/d' $(TARGETDIR)/etc/inetd.conf
ifdef CONFIG_USER_APPS_UWEB_DEMO_INETD
	$(TARGETINST) -a "http	stream	tcp	nowait	root	$(WEB_BINARY)	$(WEB_BINARY) inetd" /etc/inetd.conf
else
	$(TARGETINST) -d -p 0755 etc/init.d/uWeb /etc/init.d/uWeb
	$(TARGETINST) -s /etc/init.d/uWeb /etc/rcS.d/S90uWeb
endif

	# Handle the case where flatfsd is not used
ifndef CONFIG_USER_FLATFSD_FLATFSD
	mkdir -p $(TARGETDIR)/etc/config
	# symlink /etc/config/interfaces to /etc/network/interfaces
	$(TARGETINST) -s /etc/network/interfaces /etc/config/interfaces
endif

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

