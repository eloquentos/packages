#!/bin/bash

mkdir /tmp/packages

for i in * ; do
    if [ -d "$i" ]; then
        cd "$i"
        makepkg -C -f --sign
        mv *.pkg.* /tmp/packages
    fi
done

mv /tmp/packages ./
