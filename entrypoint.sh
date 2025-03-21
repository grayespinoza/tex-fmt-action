#!/bin/bash

set -eu
shopt -s globstar

find . -name "*.tex" -o -name "*.bib" -o -name "*.cls" -o -name "*.sty" | xargs tex-fmt $*

exit 0
