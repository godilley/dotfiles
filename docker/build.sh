#!/bin/bash

function build_image {
   echo "[$1] Building image ..."
   cd $1
   ./build.sh

   echo "[$1] Done"

   cd ../
}

echo "Building all docker images in the correct order ...."

cd images;

build_image desktop;
build_image chrome;
build_image php;
build_image codesniffer;
build_image node;

exit;
