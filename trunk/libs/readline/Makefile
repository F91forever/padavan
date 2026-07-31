include $(ROOTDIR)/rules.mk

PKG_NAME:=readline
PKG_VERSION:=8.3

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@GNU/readline
PKG_HASH:=fe5383204467828cd495ee8d1d3c037a7eba1389c22bc6a041f627976f9061cc

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--enable-shared \
	--disable-static \
	--disable-install-examples

TARGET_CFLAGS += \
	-I$(STAGING_DIR)/include

$(eval $(call BuildPackage,readline))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libreadline.so* $(ROMFSDIR)/lib/
