#!/usr/bin/env bash -x

gulp build

phearjsbuild=$(date +%Y_%m_%d_%H)

echo "Build: ${phearjsbuild}"

docker build -t us.gcr.io/trim-1349/phearjs:$phearjsbuild .
