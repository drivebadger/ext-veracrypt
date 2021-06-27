#!/bin/sh

version="1.24-update7"
mach=`uname -m`

if [ "$mach" != "x86_64" ] && [ "$mach" != "armv7l" ]; then
	mach="i386"
fi

file="`dirname $0`/bin-$version/veracrypt.$mach"
[ -x $file ] && $file $@
