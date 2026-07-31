include $(ROOTDIR)/rules.mk

PKG_NAME:=libexif
PKG_VERSION:=0.6.26

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/libexif/libexif/releases/download/v$(PKG_VERSION)
PKG_HASH:=0830ed253fceeb60444fb309598bc8a9491d3007dc054aad3a50a347c5597c57

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--disable-nls \
	--disable-docs \
	--disable-rpath

$(eval $(call BuildPackage,libexif))

romfs:
