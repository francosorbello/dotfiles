#!/bin/bash

#--DESCRIPCION DEL PROGRAMA--#
#obtengo la direccion con fzf, la revierto, saco el nombre del archivo y 
#vuelvo a revertir eso para obtener la direccion donde está

#--INSTRUCCIONES DE USO--#
#para utilizarlo añadir el siguiente comando en ".bashrc":
#alias fuzzy='. ~/bin/fuzzyscript.sh'

#--CODIGO--#
aux=$(pwd)
cd 
var=$(fzf | rev | cut -d'/' -f 2- | rev)

if [[ -n "$var" ]]; then
	cd "$var"
else
	cd "$aux"
fi
	
