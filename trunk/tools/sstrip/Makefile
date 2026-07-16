include $(ROOTDIR)/rules.mk

PKG_NAME:=sstrip

include $(INCLUDE_DIR)/package.mk

define Build/Compile
	@echo "==> Compiling $(PKG_NAME)..."
	+$(MAKE) -C $(PKG_BUILD_DIR)/elfrw libelfrw.a
	$(CC) $(CFLAGS) -c $(PKG_BUILD_DIR)/sstrip.c -o $(PKG_BUILD_DIR)/sstrip.o
	$(CC) $(LDFLAGS) -o $(PKG_BUILD_DIR)/sstrip $(PKG_BUILD_DIR)/sstrip.o $(PKG_BUILD_DIR)/elfrw/libelfrw.a

	@echo "==> Installing $(PKG_NAME) to $(ROOTDIR)/tools/sstrip..."
	$(INSTALL_DIR) $(ROOTDIR)/tools/sstrip
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sstrip $(ROOTDIR)/tools/sstrip/
endef

$(eval $(call BuildPackage,sstrip))
