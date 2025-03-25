#!/bin/bash -eu

find . -name "*.tex" -o -name "*.bib" -o -name "*.cls" -o -name "*.sty" | xargs tex-fmt $*

exit 0
