#!/bin/bash

set -e

if [ -z "$1" ]; then
  filename=$(uuidgen)
else
  filename=$1
fi

tmpfile="$filename.tex"
erb cv.tex.erb > $tmpfile
./build.sh $tmpfile
rm $tmpfile
pdffile="$filename.pdf"
open $pdffile
rm "$filename.aux" "$filename.log" "$filename.out"
if [ -z "$1" ]; then
  rm $pdffile
fi
