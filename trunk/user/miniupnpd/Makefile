include $(ROOTDIR)/rules.mk

PKG_NAME:=miniupnpd
PKG_VERSION:=2.3.10
THISDIR = $(shell pwd)

include $(INCLUDE_DIR)/package.mk

PKG_BUILD_DIR = $(ROOTDIR)/build/$(PKG_NAME)-$(PKG_VERSION)
ENABLE_IPV6:=1

define Build/Configure
	cd $(PKG_BUILD_DIR) && \
	$(TARGET_CONFIGURE_OPTS) \
	CFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
	CXXFLAGS="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS)" \
	LDFLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS)" && \
	./configure \
		--host-os=Linux \
		--host-os-version=4.4.198 \
		--host-machine=mips \
		--ipv6 \
		--igd2 \
		--vendorcfg \
		--portinuse \
		--vendorcfg \
		--firewall=iptables \
		--leasefile &&\
	$(SED) 's/-fPIE//g; s/-pie//g' $(PKG_BUILD_DIR)/Makefile
endef

MAKE_FLAGS += -f Makefile ENABLE_IPV6=$(ENABLE_IPV6)

$(eval $(call BuildPackage,miniupnpd))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/miniupnpd $(ROMFSDIR)/usr/bin/miniupnpd
	$(ROMFSINST) -p +x $(THISDIR)/miniupnpdconf.sh /etc_ro/miniupnpdconf.sh
