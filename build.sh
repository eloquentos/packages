#!/bin/bash

rm -rf ./packages
rm -rf /tmp/packages
mkdir /tmp/packages

for i in * ; do
    if [ -d "$i" ]; then
        if [ -a "scripts/$i" ]; then
            scripts/${i}
        fi

        cd $i
        makepkg -C -f -s -r --sign --key eloquentos@nimbusoft.co.uk --noconfirm
        mv *.pkg.* /tmp/packages
        cd ..
    fi
done

mv /tmp/packages ./packages
repo-add -s -k eloquentos@nimbusoft.co.uk packages/eloquent-testing.db.tar.xz packages/*.tar.xz

tar -zcvf packages.tar.gz packages
