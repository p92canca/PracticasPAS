#!/bin/bash
if [ ! -d "$1" ]
then
	echo "El directorio no existe"
else
	rm "$1.html"
	#¿como obtener la ruta? guardar en direccion
	antigua=$(pwd)
	cd $1
	direccion=$(pwd)
	cd $antigua
	echo "Generando el listado de la carpeta $direccion sobre el fichero $1.html..."
	for x in $(find "$1" -name "*")
	do
		if [ -d $x ]
		then
			echo "<html>" >> "$1.html"
			echo "<head>" >> "$1.html"
		else
			echo "preba2"
		fi
	done
	echo "¡Terminado!"

fi
