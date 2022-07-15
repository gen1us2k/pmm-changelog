#!/bin/sh -l

git clone --depth 1 $1 doc
cd doc/docs/release-notes
version="${2/v//}"
changelog=`cat ./$version.md`
echo "::set-output changelog=$changelog"
