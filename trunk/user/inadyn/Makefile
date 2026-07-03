include $(ROOTDIR)/rules.mk

PKG_NAME:=inadyn
PKG_VERSION:=2.13.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/troglobit/inadyn/releases/download/v$(PKG_VERSION)
PKG_HASH:=d08ca63a35896f2a809ba9b704da16ec6812b94dd410e7b3ea536a16d93860c2

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += --enable-openssl

$(eval $(call BuildPackage,inadyn))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/inadyn $(ROMFSDIR)/bin/inadyn
