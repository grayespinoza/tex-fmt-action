#!/bin/bash -euo pipefail

find "$INPUT_INPUTS" -name "*.tex" -o -name "*.bib" -o -name "*.cls" -o -name "*.sty" | xargs -r tex-fmt $INPUT_OPTS
