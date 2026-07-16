include $(ROOTDIR)/rules.mk

PKG_NAME := lzma
PKG_VERSION := 2602
PKG_SOURCE := $(PKG_NAME)$(PKG_VERSION).7z
PKG_SOURCE_URL := https://www.7-zip.org/a/
PKG_HASH := 2878c85f5f43a4a4e0952b1fd4e5fe097c1c143997a8047c7e1e788892aa9357
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Build/Prepare
	@echo "==> Extracting $(PKG_SOURCE)..."
	@7z x -bd -y $(DL_DIR)/$(PKG_SOURCE) -o$(PKG_BUILD_DIR) > /dev/null
endef

define Build/Compile
	@echo "==> Compiling $(PKG_NAME)..."
	+$(MAKE) -C $(PKG_BUILD_DIR)/CPP/7zip/Bundles/LzmaCon -f makefile.gcc

	@echo "==> Installing $(PKG_NAME) to tools/lzma..."
	$(INSTALL_DIR) $(ROOTDIR)/tools/lzma
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/CPP/7zip/Bundles/LzmaCon/_o/lzma $(ROOTDIR)/tools/lzma/
endef

$(eval $(call BuildPackage,lzma))
