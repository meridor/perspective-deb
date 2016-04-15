#!/bin/bash
VERSION=$(dpkg-parsechangelog | sed -ne 's/^Version: \(.*\)\-[0-9]\{1,\}$/\1/p' | sed -e 's/\([0-9.]*\)\(-RELEASE\)*/\1/g'
echo "Building source package for version = $VERSION..."
scripts/clean.sh $VERSION
scripts/build.sh $VERSION
debuild -S
