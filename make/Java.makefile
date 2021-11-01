JAVA_COMPILER ?= javac
JAVA_RUNTIME ?= java

srcdir ?= Java
outdir ?= $(srcdir)/bin

.PHONY: all

all: $(outdir)/CommentingOut.class \
		$(outdir)/HomoglyphFunction.class \
		$(outdir)/StretchedString.class \

$(outdir)/%.class: $(srcdir)/%.java
	@mkdir -p $(outdir)
	-$(JAVA_COMPILER) -d $(outdir) $^
