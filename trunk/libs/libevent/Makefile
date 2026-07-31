include $(ROOTDIR)/rules.mk

PKG_NAME:=libevent
PKG_VERSION:=2.1.13

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-stable.tar.gz
PKG_SOURCE_URL:=https://github.com/libevent/libevent/releases/download/release-$(PKG_VERSION)-stable
PKG_HASH:=f7e9383b8c0baa81b687e5b5eecc01beefaf1b19b64151d95ed61647fe7a315c
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)-stable

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--enable-thread-support \
	--disable-debug-mode \
	--disable-samples \
	--disable-libevent-regress \
	--enable-openssl \

$(eval $(call BuildPackage,libevent))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libevent*.so* $(ROMFSDIR)/lib/