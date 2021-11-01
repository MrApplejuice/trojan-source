CSHARP_COMPILER ?= mcs

srcdir ?= C\#
outdir ?= $(srcdir)/bin

.PHONY: all

all: $(outdir)/commenting-out.exe \
		$(outdir)/homoglyph-function.exe \
		$(outdir)/invisible-function.exe \
		$(outdir)/stretched-string.exe \

$(outdir)/%.exe: $(srcdir)/%.csx
	@mkdir -p $(outdir)
	-$(CSHARP_COMPILER) -out:$@ $^
