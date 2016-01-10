#!/bin/bash

rm -rf /tmp/packages
mkdir /tmp/packages

for i in * ; do
    if [ -d "$i" ]; then
        cd $i
        makepkg -C -f -s -r --sign
        mv *.pkg.* /tmp/packages
        cd ..
    fi
done

mv /tmp/packages ./build
