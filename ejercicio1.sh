#!/bin/bash
d=$(date +%s) #Tiempo UNIX
lista=""
if [ ! -d "$1" ]
then
	echo "El directorio no existe"
else
	for x in $(find "$1" -name "*")
	do
		s=$(stat -c%Y "$x") #> /dev/null
		time=$(($d-$s))
		echo "$x"
		if [ $time -gt 20 ]
		then
			lista="$lista $x"
		fi
	done
	if [ $2 ]
	then
		tar -czvf "$2" $lista > /dev/null
	else
		tar -czvf "$1.tar.gz" $lista > /dev/null
	fi
	echo "Archivo $1 creado correctamente"
fi
