include $(ROOTDIR)/rules.mk

PKG_NAME:=libogg
PKG_VERSION:=1.3.6

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=http://downloads.xiph.org/releases/ogg/
PKG_HASH:=5c8253428e181840cd20d41f3ca16557a9cc04bad4a3d04cce84808677fa1061

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--disable-debug \
	--disable-docs

$(eval $(call BuildPackage,libogg))

romfs:
