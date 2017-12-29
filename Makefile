SYSCONFDIR ?= /etc
CONFD ?= $(SYSCONFDIR)/conf.d
INITD ?= $(SYSCONFDIR)/init.d

all:

install:
	install -d $(DESTDIR)$(CONFD)
	install -m 0644 conf.d/* $(DESTDIR)$(CONFD)
	install -d $(DESTDIR)$(INITD)
	install -m 0755 init.d/* $(DESTDIR)$(INITD)

.PHONY: install
