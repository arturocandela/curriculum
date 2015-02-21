#!/bin/bash
#Program for compiling arturos curriculum in modercv

FILENAMEPDF=""

if [ $# -ne 2 ];then
	if [ $# -ne 3 ];then
		echo "Uso del comando: $0 <archivo_tex> <hypersetup>";
		echo "Uso del comando: $0 <archivo_tex> <hypersetup> <nombre_salida>";
		exit 1;
	else
		PDF=$3
		FILENAMEPDF=${PDF%%.*}
		echo $FILENAMEPDF;
	fi
fi;

#Commandos de latex

FILENAME=$1
FILENAMETEX=${FILENAME%%.*}


cat $2 > hypersetup.tex;

echo "Montando $FILENAMETEX";
echo "\tLatex $FILENAMETEX.tex"
latex $FILENAMETEX 
echo "\tbibtex book"
bibtex book
echo "\tbibtex Android"
bibtex android
echo "\tios"
bibtex ios
echo "\tLatex $FILENAMETEX.tex"
latex $FILENAMETEX 
echo "\tLatex $FILENAMETEX.tex"
latex $FILENAMETEX 
echo "\dvips $FILENAMETEX.tex"
dvips $FILENAMETEX.dvi

if [ $# -ne 3 ];then
	ps2pdf $FILENAMETEX.ps
else
	ps2pdf $FILENAMETEX.ps $FILENAMEPDF.pdf
fi;



#Configuracion de si es online o no:

#echo $FILENAMETEX;