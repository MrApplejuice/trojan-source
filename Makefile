C_COMPILER ?= gcc
CPP_COMPILER ?= g++
JAVA_COMPILER ?= javac
JAVA_RUNTIME ?= java
NODE ?= node
CSHARP_COMPILER ?= mcs

definitions := C_COMPILER=$(C_COMPILER) \
	CPP_COMPILER=$(CPP_COMPILER) \
	JAVA_COMPILER=$(JAVA_COMPILER) \
	JAVA_RUNTIME=$(JAVA_RUNTIME) \
	NODE=$(NODE) \
	CSHARP_COMPILER=$(CSHARP_COMPILER) \
	
all_targets := C Csharp C++ Java JavaScript

.PHONY: all $(all_targets)

all: $(all_targets)

$(all_targets):
	make -f make/$@.makefile $(definitions)
