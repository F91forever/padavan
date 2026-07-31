include $(ROOTDIR)/rules.mk

PKG_NAME:=libusb
PKG_VERSION:=1.0.30

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:= \
	https://github.com/libusb/libusb/releases/download/v$(PKG_VERSION) \
	@SF/$(PKG_NAME)
PKG_HASH:=fea36f34f9156400209595e300840767ab1a385ede1dc7ee893015aea9c6dbaf
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--disable-log \
	--disable-udev \
	--disable-examples-build \
	--disable-tests-build \
	--disable-dependency-tracking

$(eval $(call BuildPackage,libusb))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libusb-1.0.so* $(ROMFSDIR)/lib/