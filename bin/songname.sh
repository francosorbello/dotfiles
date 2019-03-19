#!/bin/bash
#este script obtiene el nombre de un archivo que le paso quitando la direccion
#EJ: file /home/rulo/musica/cancion.mp3 --> cancion.mp3

#-VERSION VIEJA-#
#cmus-remote -Q | grep file | cut -d'/' -f $num

#obtengo la info de la canción con cmus-remote y busco la linea
#que contiene el nombre de la cancion con grep
cmus-remote -Q | grep file > /tmp/nombresong.txt
#cuento la cantidad de "/" que hay. grep -o / hace que solo me quede con
#el caracter "/". wc cuenta las repeticiones del caracter
VAR=$(cat /tmp/nombresong.txt | grep -o / | wc -l)
num=$((VAR+1))
#quito el texto sobrante y devuelvo el nombre solo
cat /tmp/nombresong.txt | cut -d'/' -f $num


