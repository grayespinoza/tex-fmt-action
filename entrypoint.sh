#!/bin/bash -eu

find . -name "*.tex" -o -name "*.bib" -o -name "*.cls" -o -name "*.sty" | xargs -r tex-fmt $INPUT_OPTS

exit 0
