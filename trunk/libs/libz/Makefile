include $(ROOTDIR)/rules.mk

PKG_NAME:=zlib
PKG_VERSION:=1.3.2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/madler/zlib/releases/download/v$(PKG_VERSION)
PKG_HASH:=d7a0654783a4da529d1bb793b7ad9c3318020af77667bcae35f95d0e42a792f3

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--shared

TARGET_CFLAGS += \
	-ffunction-sections \
	-fdata-sections

TARGET_LDFLAGS += \
	-Wl,--gc-sections

$(eval $(call BuildPackage,zlib))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libz.so* $(ROMFSDIR)/lib/
