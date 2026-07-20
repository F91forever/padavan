VERSION := 0.107.78
SHA256 := f3c23244b0acd867b40e64432f00af749a04dbde3bfbb68f5e9d046a0f31fde9
PKG := AdGuardHome_linux_mipsle_softfloat.tar.gz
URL := https://github.com/AdguardTeam/AdGuardHome/releases/download/v$(VERSION)/$(PKG)
THISDIR = $(shell pwd)

all: download_test extract_test

download_test:
	@if [ ! -f "$(PKG)" ]; then \
		echo "==> 未找到 $(PKG)，开始下载..."; \
		wget $(URL); \
	fi
	@echo "==> 校验 SHA256..."
	@echo "$(SHA256)  $(PKG)" | sha256sum -c --status || { \
		echo "❌ SHA256 校验失败，删除并重新下载..."; \
		rm -f $(PKG); \
		wget $(URL); \
		echo "==> 再次校验 SHA256..."; \
		echo "$(SHA256)  $(PKG)" | sha256sum -c; \
	}
extract_test:
	tar -zxvf AdGuardHome_linux_mipsle_softfloat.tar.gz

extract_test:
	@echo "==> 解压 $(PKG)..."
	tar -zxvf $(PKG)

clean:
	rm -rf AdGuardHome

romfs:
	$(ROMFSINST) -p +x $(THISDIR)/adguardhome.sh /usr/bin/adguardhome.sh
	$(ROMFSINST) -p +x $(THISDIR)/AdGuardHome/AdGuardHome /usr/bin/AdGuardHome
