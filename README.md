# Trojan Source

[*Trojan Source: Invisible Vulnerabilities*](https://trojansource.codes/trojan-source.pdf)

## Overview

We present a new type of attack in which source code is maliciously encoded so that it appears different to a compiler and to the human eye. This attack exploits subtleties in text-encoding standards such as Unicode to produce source code whose tokens are logically encoded in a different order from the one in which they are displayed, leading to vulnerabilities that cannot be perceived directly by human code reviewers.

'Trojan Source' attacks, as we call them, pose an immediate threat both to first-party software and supply-chain compromise across the industry. We present working examples of Trojan-Source attacks in C, C++, C#, JavaScript, Java, Rust, Go, and Python. We propose definitive compiler-level defenses, and describe other mitigating controls that can be deployed in editors, repositories, and build pipelines while compilers are upgraded to block this attack.

Additional details can be found in our [related paper](https://trojansource.codes/trojan-source.pdf) and at [trojansource.codes](https://trojansource.codes).

## Proofs-of-Concept

This repository is divided into per-language subdirectories. Each subdirectory contains a series of proofs-of-concept implementing various Trojan-Source attacks as well as a README describing the compilers/interpreters with which these attacks were verified.

## Compiling

Some languages require compiling before execution. For your convenience, a set of GNU Makefile can
be used to compile all example applications. The root-makefile contains presets for the most
common compiler executables that can be overridden from the commandline.

The relevant variables and their defaults are:

~~~~~~~~~~~~~
C_COMPILER ?= gcc
CPP_COMPILER ?= g++
JAVA_COMPILER ?= javac
JAVA_RUNTIME ?= java
NODE ?= node
CSHARP_COMPILER ?= mcs
~~~~~~~~~~~~~

To build all code using these default-compiler names, issue: `make`. To change
a default to some other value, issue:

~~~~~~~~~~~~~.sh

make C_COMPILER=/usr/local/bin/gcc

# or

export C_COMPILER=/usr/local/bin/gcc
make
~~~~~~~~~~~~~
