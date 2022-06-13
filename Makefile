PREFIX = /usr/local

all:
	@nimble build

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mv cc $(DESTDIR)$(PREFIX)/bin/cli-contains



uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/cc
