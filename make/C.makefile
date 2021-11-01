C_COMPILER ?= gcc

srcdir ?= C
outdir ?= $(srcdir)/bin

.PHONY: all

all: $(outdir)/commenting-out \
		$(outdir)/early-return \
		$(outdir)/homoglyph-function \
		$(outdir)/invisible-function \
		$(outdir)/stretched-string \

$(outdir)/%: $(srcdir)/%.c
	@mkdir -p $(outdir)
	-$(C_COMPILER) -o $@ $^
