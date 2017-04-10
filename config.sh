#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=GModule
Module=${Mod}-2.0
module=`echo "${Module}" | tr '[:upper:]' '[:lower:]'`
export PATH=`pwd`/.build/gir2swift/.build/debug:"${PATH}"
LINKFLAGS=`pkg-config --libs $module gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//g' -e 's/ -pthread/ -lpthread/g' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
TAC="tail -r"
if which tac >/dev/null ; then
   TAC=tac
   else if which gtac >/dev/null ; then
	TAC=gtac
   fi
fi
