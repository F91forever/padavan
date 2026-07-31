include $(ROOTDIR)/rules.mk

PKG_NAME:=curl
PKG_VERSION:=8.21.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/curl/curl/releases/download/curl-$(subst .,_,$(PKG_VERSION))/
PKG_HASH:=aa1b66a70eace83dc624508745646c08ae561de512ab403adffb93ac87fc72e6

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--enable-ipv6 \
	--disable-ldap \
	--disable-rtsp \
	--disable-smb \
	--disable-telnet \
	--disable-tftp \
	--disable-dict \
	--disable-gopher \
	--disable-imap \
	--disable-pop3 \
	--disable-smtp \
	--disable-debug \
	--disable-docs \
	--without-libidn2 \
	--without-nghttp2 \
	--without-libssh2 \
	--without-libpsl \
	--without-zstd \
	--with-ca-bundle=/etc/ssl/certs/ca-certificates.crt \
	--with-zlib=$(STAGING_DIR) \
	--with-openssl=$(STAGING_DIR)
$(eval $(call BuildPackage,curl))

romfs:
ifeq ($(CONFIG_FIRMWARE_INCLUDE_CURL),y)
	$(INSTALL_DIR) $(ROMFSDIR)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/curl $(ROMFSDIR)/usr/bin/
endif
	$(INSTALL_DIR) $(ROMFSDIR)/lib
	$(CP) $(PKG_INSTALL_DIR)/lib/libcurl.so* $(ROMFSDIR)/lib/