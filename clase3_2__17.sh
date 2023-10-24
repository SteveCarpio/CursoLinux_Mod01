#!/bin/bash
# 1- Crea un directorio llamado "mis_archivos".
# 2- Dentro de "mis_archivos", crea dos archivos llamados "archivo1.txt" y "archivo2.txt".
# 3- Cambia los permisos de "archivo1.txt" para que sea de solo lectura.
# 4- Cambia los permisos de "archivo2.txt" para que sea de lectura y escritura.
# 5- Muestra los permisos actualizados de ambos archivos.

raiz1=`pwd`
raiz2=${raiz1}/mis_archivos/
mkdir -p ${raiz2}
touch ${raiz2}archivo1.txt
touch ${raiz2}archivo2.txt
echo "Permisos de los ficheros al inicio:"
ls -l $raiz2
chmod 444 ${raiz2}archivo1.txt
chmod 666 ${raiz2}archivo2.txt
echo
echo "Permisos de los ficheros al final"
ls -l $raiz2

