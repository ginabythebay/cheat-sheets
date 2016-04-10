#!/bin/bash

set -e

IMG=cheatsheets

docker build -t $IMG .

rm -rf build
mkdir build
cp *.tex build/
cp incontainer.bash build/

docker run  -v /home/gina/Source/cheat-sheets/build:/home/build -u $(id -u) $IMG

