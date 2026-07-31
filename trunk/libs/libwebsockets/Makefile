include $(ROOTDIR)/rules.mk

PKG_NAME:=libwebsockets
PKG_VERSION:=4.5.8

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/warmcat/libwebsockets/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=b6ade658f4af3a823d0dc806ae5ef0623f0f4f5e2aeb895a0f77c4783840c30e

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=MinSizeRel \
	-DLWS_WITH_SHARED=ON \
	-DLWS_WITH_STATIC=OFF \
	-DLWS_WITH_SSL=ON \
	-DLWS_WITH_LIBUV=ON \
	-DLWS_WITHOUT_TESTAPPS=ON \
	-DLWS_WITHOUT_TEST_SERVER=ON \
	-DLWS_WITHOUT_TEST_CLIENT=ON \
	-DLWS_WITH_HTTP2=OFF \
	-DLWS_WITH_UDP=OFF \
	-DLWS_IPV6=ON

TARGET_CFLAGS += \
	-Wno-error=enum-int-mismatch

$(eval $(call BuildPackage,libwebsockets))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libwebsockets.so* $(ROMFSDIR)/lib/
	$(CP) $(PKG_INSTALL_DIR)/lib/libwebsockets-evlib_uv.so* $(ROMFSDIR)/lib/
