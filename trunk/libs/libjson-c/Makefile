include $(ROOTDIR)/rules.mk

PKG_NAME:=json-c
PKG_VERSION:=0.19

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-nodoc.tar.gz
PKG_SOURCE_URL:=https://s3.amazonaws.com/json-c_releases/releases/
PKG_HASH:=704927172443309a8efeb162060bb215548e1286e5568514007dd2cc35a0a164

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_STATIC_LIBS=OFF \
	-DENABLE_RDRAND=OFF \
	-DENABLE_THREADING=ON \
	-DENABLE_TESTING=OFF \
	-DJSON_C_BUILD_TESTS=OFF \
	-DJSON_C_BUILD_EXAMPLES=OFF \
	-DJSON_C_INSTALL=ON \
	-DCMAKE_BUILD_TYPE=Release

$(eval $(call BuildPackage,json-c))

romfs:
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libjson-c.so* $(ROMFSDIR)/lib/
