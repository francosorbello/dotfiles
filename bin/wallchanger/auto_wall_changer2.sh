#!/bin/bash

case $1 in
	-t) 
		#con temporizador custom
		while true; do
			#obtengo la hora
			hora=$(date +%k)
			if [[ "$horaant" != "$hora" ]]; then
				if [[ "$hora" -gt "$2" && "$hora" -lt "$3" ]];then
				#si es de dia, pongo un wallpaper random de la carpeta dia
					nitrogen --set-auto --random ~/bin/wallchanger/files/dia
				else
				#caso contrario, pongo uno nocturno
					nitrogen --set-auto --random ~/bin/wallchanger/files/noche
				fi
				horaant=$hora
			fi
			sleep 1800	
		done
		;;
	-a)
		#actualizo automaticamente cada $2 minutos. Por default es 30
		min=$(date +%_M) #obtengo los minutos actuales
		#paso de min a seg
		seg=$(($min * 60))
		nitrogen --set-auto --random ~/bin/wallchanger/files
		sleep $seg
		;;
esac
