#!/bin/bash

t=$(tempfile)

pandoc $1 -f markdown -o $t.pdf

zathura $t.pdf
