include $(ROOTDIR)/rules.mk

PKG_NAME:=libtirpc
PKG_VERSION:=1.3.6

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=@SF/$(PKG_NAME)
PKG_HASH:=bbd26a8f0df5690a62a47f6aa30f797f3ef8d02560d1bc449a83066b5a1d3508

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--enable-shared \
	--disable-static \
	--disable-gssapi \
	--disable-debug \
	--disable-dependency-tracking

$(eval $(call BuildPackage,libtirpc))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libtirpc.so* $(ROMFSDIR)/lib/
	$(INSTALL_DIR) $(ROMFSDIR)/etc_ro
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/etc/netconfig $(ROMFSDIR)/etc_ro/netconfig
