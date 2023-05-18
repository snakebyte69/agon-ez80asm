# Makefile for Linux/Unix and Mac OS X
OS=UNIX
PROJECTNAME=ez80asm

# Tools and arguments
CC=gcc
LFLAGS=-g -Wall -DUNIX
CFLAGS=$(LFLAGS) -c
OUTFLAG=-o
RELEASE_LFLAGS=-Wall -O2 -DNDEBUG -DUNIX
RELEASE_CFLAGS=$(RELEASE_LFLAGS) -c

