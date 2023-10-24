#!/bin/bash
# Usando bucles y un script en bash, que recibe como parámetro un número entre 1 y 5 
# (sólo son válidos el 1, 2, 3, 4 y 5), crea tantos ficheros como número indique el 
# usuario usando como nombre el propio número.

if [[ $1 -gt 0 && $1 -lt 6 ]]; then
	for (( i = 1 ; i <= $1 ; i++ ));do
		touch temporal_$i.txt
	done
	ls -l temporal_?.txt
	rm temporal_?.txt
else
	echo "Valor fuera de rango elegir un valor entre (1,2,3,4,5)"
fi

