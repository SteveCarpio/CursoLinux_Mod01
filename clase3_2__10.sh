#!/bin/bash
# Pasando un nombre de usuario y una contraseña por parámetros a un script 
# (primero user y segundo pass), validar a un usuario (el user correcto y 
# el pass correcto estarán en una variable)

USER=STEVE
PASS=1234

if [ "$#" == "2" ]; then
	if [[ "$USER" == "$1" && "$PASS" == "$2" ]]; then
		echo "Acceso Permitido :-)"
	else
		echo "Usuario o password incorrecta"
	fi
else
	echo "Es necesario pasar 2 parametros (1-Usuario / 2-Password)"
fi



