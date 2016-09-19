#!/bin/bash
./wkhtmltopdf --print-media-type --page-size Letter -B 0 -L 0 -R 0 -T 0 index.html - | pdftk - cat 1 output resume.pdf
