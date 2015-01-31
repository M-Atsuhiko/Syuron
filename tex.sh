#! /bin/bash
#author: Atsuhiko Murakami

platex ./report.tex
if [ $? -eq 0 ]
then
    dvipdfmx ./report.dvi
    if [ $? -eq 0 ]
    then
	open report.pdf
    fi
fi
     

