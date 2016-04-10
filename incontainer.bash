#!/bin/bash

for t in *.tex;
do
    echo ""
    echo "*** beginning $t ***"
    echo ""
    
    b="$(basename $t .tex)"
    
    echo pdflatex "$t"
    pdflatex "$t"

    echo makeindex "$b"
    makeindex "$b"
    
    echo pdflatex "$t"
    pdflatex "$t"
done
