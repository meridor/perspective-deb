#!/bin/bash
VERSION=$(dpkg-parsechangelog | sed -ne 's/^Version: \([0-9.]*\).*/\1/p')
scripts/clean.sh $VERSION
scripts/build.sh $VERSION
debuild -S
