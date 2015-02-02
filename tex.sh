#! /bin/bash
#author: Atsuhiko Murakami

pbibtex report
if [ $? -eq 0 ]
then
    platex ./report.tex
    if [ $? -eq 0 ]
    then
	dvipdfmx ./report.dvi
	if [ $? -eq 0 ]
	then
	    open report.pdf
	fi
    fi
fi

