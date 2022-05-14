#!/bin/sh

#Task was to made a script downloading files from img_000.png to img_063.png

for i in $(seq 63); do
    if [ i -lt 10 ]; then
        /sbin/wget http://www.foto.net/2021/img_00$i.png
    else
        /sbin/wget http://www.foto.net/2021/img_0$i.png
    fi
done
