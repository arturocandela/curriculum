#!/bin/bash
echo "Construir curriculum"
echo " ES"
./compilar-es.sh
echo " EN"
./compilar-en.sh

echo "limpiando..."

rm *.bbl;
rm *.blg;
rm *.aux;
rm *.dvi;
rm *.log;
rm *.out;
rm *.ps;


git checkout hypersetup.tex
echo "Proceso finalizado";
