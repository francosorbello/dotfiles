#!/bin/bash

while true; do
	#obtengo la hora
	hora=$(date +%k)
	if [[ "$horaant" != "$hora" ]]; then
		if [[ "$hora" -gt 7 && "$hora" -lt 20 ]];then
		#si es de dia, pongo un wallpaper random de la carpeta dia
			nitrogen --set-auto --random ~/bin/wallchanger/files/dia
		else
		#caso contrario, pongo uno nocturno
			nitrogen --set-auto --random ~/bin/wallchanger/files/noche
		fi
		horaant=$hora
	fi
	
	#obtengo minutos
	min=$(date +%_M)
	#paso de min a seg
	seg=$(($min * 60))
	#para asegurarme que pregunte exactamente cada 1 hora(ej: si son las 7:33 quiero que vuelva a fijarse a las 8)resto el tiempo faltante a 60 min
	t=$((3600 - $seg))
	sleep $t
done