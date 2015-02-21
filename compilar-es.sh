#!/bin/bash
echo "Compilar Castellano:"

echo "\tCurriculum Imprimible"
./compilar.sh curriculum-es hypersetup.imprimible.tex curriculum-es-imprimible > /dev/null

echo "\tCurriculum On Line"
./compilar.sh curriculum-es hypersetup.online.tex curriculum-es-online >/dev/null
