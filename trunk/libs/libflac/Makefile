include $(ROOTDIR)/rules.mk

PKG_NAME:=flac
PKG_VERSION:=1.5.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://downloads.xiph.org/releases/flac/
PKG_HASH:=f2c1c76592a82ffff8413ba3c4a1299b6c7ab06c734dee03fd88630485c2b920

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	$(if $(LIBS_BUILD_SHARED),--disable-static,--enable-static) \
	$(if $(LIBS_BUILD_SHARED),--enable-shared,--disable-shared) \
	--disable-cpplibs \
	--disable-examples \
	--disable-programs \
	--disable-doxygen-docs \
	--disable-ogg \
	--disable-debug

$(eval $(call BuildPackage,flac))

romfs:
ifeq ($(LIBS_BUILD_SHARED),y)
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libFLAC.so* $(ROMFSDIR)/lib/
endif
