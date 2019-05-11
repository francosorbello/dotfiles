#!/bin/bash

#--DESCRIPCION DEL PROGRAMA--#
#obtengo la direccion con fzf y cambio a esa carpeta

#--INSTRUCCIONES DE USO--#
#para utilizarlo añadir el siguiente comando en ".bashrc":
#alias fuzzier='. ~/bin/fuzzyscriptV2.sh'

#--CODIGO--#
aux=$(pwd)
cd 
var=$(find * -type d | fzf )

if [[ -n "$var" ]]; then
	cd "$var"
else
	cd "$aux"
fi
