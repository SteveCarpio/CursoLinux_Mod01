#!/bin/bash
# Usando bucles y un script en bash, que recibe como parámetros dos números, 
# muestra los números que hay dentro del intervalo indicado por el usuario, 
# teniendo en cuenta el orden en el que los indica e incluyendo los extremos.

if [ $1 -eq $2 ]; then
	echo "Los valores son iguales no se puede hacer"
else
	INI=$1
	FIN=$2
	if [ $1 -gt $2 ]; then
		INI=$2
		FIN=$1
	fi
	echo "Valores que hay entre el $INI y el $FIN"
fi

for (( i=$INI; i<=$FIN; i++)); do
	echo $i
done
