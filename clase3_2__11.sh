#!/bin/bash
#Crea un script que funcione del siguiente modo:
# 1- Si el usuario pone como primer parámetro 1 y una ruta, nos muestra el ls de dicha ruta (tratándose de un directorio)
# 2- Si el usuario pone 2 y un nombre de fichero, nos muestra el cat del fichero

if [[ "$1" == "1" || "$1" == "2" ]]; then
	if [ "$1" == "1" ]; then
		if [ -d $2 ]; then
			echo "Contenido del directorio: $2"
			ls -l $2
		else
			echo "No existe el directorio: $2"
		fi
	fi
	if [ "$1" == "2" ]; then
		if [ -f $2 ]; then
                        echo "Contenido del fichero: $2"
                        cat $2
                else
                        echo "No existe el fichero: $2"
                fi
        fi
else
	echo "Elegir un valor entre (1,2)"
        echo " 1 - Para listar la ruta de un directorio"
	echo " 2 - Para mostrar en contenido de un fichero"
fi
