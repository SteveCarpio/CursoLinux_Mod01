#!/bin/bash
#Modifica el script del ejercicio 14 de manera que permitas que el usuario pase por parámetros tanto el directorio como el texto que quirere buscar con grep.

directorio=$1
cadena_a_buscar=$2

archivos_txt=$(find "$directorio" -type f -name "*.txt")

for archivo in $archivos_txt; do
    if grep -q "$cadena_a_buscar" "$archivo"; then
        echo "Cadena encontrada en el archivo: $archivo"
        grep "$cadena_a_buscar" "$archivo"
        echo "----------------------------------------"
    fi
done
