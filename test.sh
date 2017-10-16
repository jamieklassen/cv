#!/bin/bash

set -e

uuid=$(uuidgen)
tmpfile="$uuid.tex"
erb cv.tex.erb > $tmpfile
./build.sh $tmpfile
rm $tmpfile
pdffile="$uuid.pdf"
open $pdffile
rm $pdffile "$uuid.aux" "$uuid.log" "$uuid.out"
