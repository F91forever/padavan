VERSION := 0.107.77
THISDIR = $(shell pwd)

all: download_test extract_test

download_test:
	wget https://github.com/AdguardTeam/AdGuardHome/releases/download/v$(VERSION)/AdGuardHome_linux_mipsle_softfloat.tar.gz
extract_test:
	tar -zxvf AdGuardHome_linux_mipsle_softfloat.tar.gz

clean:
	rm -rf AdGuardHome
	rm -f AdGuardHome_linux_mipsle_softfloat.tar.gz

romfs:
	$(ROMFSINST) -p +x $(THISDIR)/adguardhome.sh /usr/bin/adguardhome.sh
	$(ROMFSINST) -p +x $(THISDIR)/AdGuardHome/AdGuardHome /usr/bin/AdGuardHome
