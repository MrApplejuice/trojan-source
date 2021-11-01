CPP_COMPILER ?= g++

srcdir ?= C++
outdir ?= $(srcdir)/bin

.PHONY: all

all: $(outdir)/commenting-out \
		$(outdir)/homoglyph-function \
		$(outdir)/invisible-function \
		$(outdir)/stretched-string \

$(outdir)/%: $(srcdir)/%.cpp
	@mkdir -p $(outdir)
	-$(CPP_COMPILER) -o $@ $^
