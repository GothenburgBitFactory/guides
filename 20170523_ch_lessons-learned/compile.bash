#!/bin/bash

latexmk -pvc -xelatex lessons-learned.tex 
make clean

# ~/.latexmkrc
# $dvi_previewer = 'start xdvi -watchfile 1.5';
# $ps_previewer  = 'start gv --watch';
# $pdf_previewer = 'start okular';
