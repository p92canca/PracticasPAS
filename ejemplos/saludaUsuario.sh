#!/bin/bash
echo -n "Introduzca su nombre de usuario: "; read usu
if [ "$USER" == "$usu" ]
then
	echo "Bienvenido \"$USER\""
else
	echo "Eso es mentira"
fi
