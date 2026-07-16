include $(ROOTDIR)/rules.mk

PKG_NAME:=mkimage

include $(INCLUDE_DIR)/package.mk

define Build/Compile
	@echo "==> Compiling $(PKG_NAME)..."
	$(CC) $(CFLAGS) -c $(PKG_BUILD_DIR)/crc32.c -o $(PKG_BUILD_DIR)/crc32.o
	$(CC) $(CFLAGS) -c $(PKG_BUILD_DIR)/mkimage.c -o $(PKG_BUILD_DIR)/mkimage.o
	$(CC) $(CFLAGS) -o $(PKG_BUILD_DIR)/mkimage $(PKG_BUILD_DIR)/mkimage.o $(PKG_BUILD_DIR)/crc32.o

	@echo "==> Installing $(PKG_NAME) to $(ROOTDIR)/tools/mkimage..."
	$(INSTALL_DIR) $(ROOTDIR)/tools/mkimage
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mkimage $(ROOTDIR)/tools/mkimage/
endef

$(eval $(call BuildPackage,mkimage))
