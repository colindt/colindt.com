#!/bin/bash
if [ -z $1 ]; then
    INFILE="index.html"
    OUTFILE="resume.pdf"
else
    INFILE=$1
    OUTFILE=$(basename $1 .html).pdf
fi

echo $INFILE '->' $OUTFILE

./wkhtmltopdf --print-media-type --page-size Letter -B 0 -L 0 -R 0 -T 0 $INFILE - | pdftk - cat 1 output $OUTFILE
