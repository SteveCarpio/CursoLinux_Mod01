#!/bin/bash

directorio="/home/stevecarpio/LINUX_CURSO/MODULO1/SCRIPT/"

cadena_a_buscar="stv"

echo "RESPUESTA: Crea una lista en un nuevo file con todos los .txt que encuentre"
archivos_txt=$(find "$directorio" -type f -name "*.txt")

echo "RESPUESTA: Lee el nuevo fichero creado linea a linea y se lo pasa a (archivo)"
for archivo in $archivos_txt; do

	echo "RESPUESTA: pregunta si existe en esa linea la cadena buscada" 
    	if grep -q "$cadena_a_buscar" "$archivo"; then

		echo "RESPUESTA: muestra por pantalla la cadena a buscar"
        	echo "Cadena encontrada en el archivo: $archivo"
        	grep "$cadena_a_buscar" "$archivo"
        	echo "----------------------------------------"
	fi
done

