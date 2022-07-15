#!/bin/sh -l

git clone --depth 1 $1 doc
cd doc/docs/release-notes
version="${2/refs\/tags\/v//}"
CHANGELOG=`cat ./$version.md`
echo "CHANGELOG<<EOF" >> $GITHUB_ENV
echo "$CHANGELOG" >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV
