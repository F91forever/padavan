include $(ROOTDIR)/rules.mk

PKG_NAME:=libiconv
PKG_VERSION:=1.18

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@GNU/libiconv
PKG_HASH:=3b08f5f4f9b4eb82f151a7040bfd6fe6c6fb922efe4b1659c66ea933276965e8
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--enable-shared \
	--disable-static \
	--disable-debug \
	--enable-relocatable \
	--disable-nls \
	--disable-extra-encodings

$(eval $(call BuildPackage,libiconv))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libiconv.so* $(ROMFSDIR)/lib/
