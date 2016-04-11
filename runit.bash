#!/bin/bash

set -e

platform="$(uname)"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
IMG=cheatsheets

docker build -t $IMG .

rm -rf build
mkdir build
cp *.tex build/
cp incontainer.bash build/

user_option="-u $(id -u)"
if [[ "$platform" == "Darwin" ]]; then
    user_option=""
fi

docker run  -v $DIR/build:/home/build $user_option $IMG

