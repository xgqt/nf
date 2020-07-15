BIN	= nf
MAN	= $(BIN).1

DESTDIR =
PREFIX	= /usr
INSTDIR	= $(DESTDIR)$(PREFIX)
INSTBIN	= $(INSTDIR)/bin
INSTMAN	= $(INSTDIR)/share/man/man1


.PHONY: all test install uninstall


all:
	echo "Run 'make install' to install nf"


test:
	bash test.sh


install:
	test -d $(INSTDIR) || mkdir -p $(INSTDIR)
	test -d $(INSTBIN) || mkdir -p $(INSTBIN)
	test -d $(INSTMAN) || mkdir -p $(INSTMAN)

	install -m 0755 $(BIN) $(INSTBIN)
	install -m 0644 $(MAN) $(INSTMAN)


uninstall:
	$(RM) $(INSTBIN)/$(BIN)
	$(RM) $(INSTMAN)/$(MAN)
