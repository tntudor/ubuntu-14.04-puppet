#!/usr/bin/env bash

name=`cat box-name.txt`
version=`cat Version`

rm -f *.box

echo "Building box ${name} version: ${version} ..."
vagrant package --output "${name}-v.${version}.box"
vagrant destroy -f
