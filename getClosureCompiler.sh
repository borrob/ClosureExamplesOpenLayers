#!/bin/bash

echo 'Get the closure compiler'

rm -rf compiler-latest
mkdir compiler-latest
pushd compiler-latest

wget "https://dl.google.com/closure-compiler/compiler-latest.zip"
unzip compiler-latest.zip
rm -f compiler-latest.zip

popd
