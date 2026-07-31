include $(ROOTDIR)/rules.mk

PKG_NAME:=libsodium
PKG_VERSION:=1.0.22

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:= \
	https://download.libsodium.org/libsodium/releases \
	https://github.com/jedisct1/libsodium/releases/download/$(PKG_VERSION)-RELEASE/
PKG_HASH:=adbdd8f16149e81ac6078a03aca6fc03b592b89ef7b5ed83841c086191be3349

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--disable-ssp \
	--disable-dependency-tracking \
	--disable-valgrind

$(eval $(call BuildPackage,libsodium))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libsodium.so* $(ROMFSDIR)/lib/
