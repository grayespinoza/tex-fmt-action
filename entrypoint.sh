#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

find "$INPUT_INPUTS" -name "*.tex" -o -name "*.bib" -o -name "*.cls" -o -name "*.sty" | xargs -r tex-fmt $INPUT_OPTS
