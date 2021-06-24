prefix=$(HOME)
bindir=$(prefix)/bin

INSTALL = install
LN = ln

BINS = \
	g \
	tb \
	xc

all: $(BINS)

install: all
	$(INSTALL) -d -m 755 $(DESTDIR)$(bindir)
	$(INSTALL) -m 755 $(BINS) $(DESTDIR)$(bindir)/

clean:
	rm -f $(GENERATED)
