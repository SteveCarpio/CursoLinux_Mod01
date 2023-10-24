#!/bin/bash
# Averigua la utilidad del | en el uso de la terminal y pon un ejemplo.
#
#Ejecutar con el nombre del o fichero sin extencion ni versionados
# ejemplo:  ./script.sh prueba a

echo "Texto a buscar ($2) en los ficheros ($1)"
echo
echo "Encontrados:..."
cat ${1}?.txt | grep $2
echo
echo "Numero total de coincidencias:..."
cat ${1}?.txt | grep $2 | wc -l
