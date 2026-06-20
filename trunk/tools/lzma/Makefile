include $(ROOTDIR)/rules.mk

PKG_NAME := lzma
PKG_VERSION := 2601
PKG_SOURCE := $(PKG_NAME)$(PKG_VERSION).7z
PKG_SOURCE_URL := https://www.7-zip.org/a/
PKG_HASH := b860f17f9df3c0524dd2ef2c639ab5e43ad0006b77b8f7bb6d191bf528536885
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
