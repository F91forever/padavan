include $(ROOTDIR)/rules.mk

PKG_NAME:=libxml2
PKG_VERSION:=2.15.3

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@GNOME/libxml2/$(basename $(PKG_VERSION))
PKG_HASH:=78262a6e7ac170d6528ebfe2efccdf220191a5af6a6cd61ea4a9a9a5042c7a07

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--without-catalog \
	--without-debug \
	--without-http \
	--without-python \
	--without-readline \
	--without-iconv \
	--with-zlib=$(STAGING_DIR) \
	--with-threads \
	--with-reader \
	--with-writer \
	--with-xpath \
	--disable-dependency-tracking

$(eval $(call BuildPackage,libxml2))

romfs:
