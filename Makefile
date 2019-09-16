PREFIX ?= /usr/local

default:

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 775 getdoi $(DESTDIR)$(PREFIX)/bin
	install -m 775 getref $(DESTDIR)$(PREFIX)/bin
	install -m 775 scholarref $(DESTDIR)$(PREFIX)/bin
	install -m 775 shdl $(DESTDIR)$(PREFIX)/bin

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/getdoi
	$(RM) $(DESTDIR)$(PREFIX)/getref
	$(RM) $(DESTDIR)$(PREFIX)/scholarref
	$(RM) $(DESTDIR)$(PREFIX)/shdl

.PHONY: default install uninstall
