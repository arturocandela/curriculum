#!/bin/bash
echo "Compilar Ingles:"

echo "\tCurriculum Imprimible"
./compilar.sh curriculum-en hypersetup.imprimible.tex curriculum-en-imprimible >/dev/null

echo "\tCurriculum On Line"
./compilar.sh curriculum-en hypersetup.online.tex curriculum-en-online >/dev/null
