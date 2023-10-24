#!/bin/bash
# 1 - Busca todos los archivos con extensión ".txt" en el directorio actual utilizando el comando find (crea algunos, si no dispones de ellos).
# 2 - Muestra una lista de los nombres de estos archivos.
# 3 - Utiliza el comando wc (usa man para ver su manual) para contar la cantidad de líneas en cada archivo y mostrar el número total de líneas en todos los archivos.

raiz=`pwd`

find ${raiz}/*txt > ${raiz}/TMP/temporal1 
CONT=0

for i in `cat ${raiz}/TMP/temporal1`
do
	VAR1=`cat $i | wc -l`
	echo "El fichero: " $i "tiene " $VAR1 " lineas"
	CONT=$(($VAR1+$CONT)) 
done
echo "-------------------------------"
echo "En total todos suman $CONT lineas"
