#!/bin/bash

#20
#Realiza un script en bash, que permita crear un fichero y asignar los permisos que queramos, 
#la ejecución va a ser así:

#./fichero_permisos.sh nombre.txt rwx rw r

#Esto indicará que el fichero se va a llamar nombre.txt y va a tener permisos de lectura, 
#escritura y ejecución para el propietario, de lectura y escritura para el grupo y 
#de lectura para el resto.

echo "Fichero: $1"
echo "Usuario: $2"
echo "Grupo:   $3"
echo "Resto:   $4"

chmod -v u+$2,g+$3,o+$4 $1
