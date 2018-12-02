#!/bin/bash
#este script (des)monta dispositivos extraibles como pendrives mediante el comando pmount.
case $1 in
	#si la entrada es "m",monto
	m)
		echo "Dispositivos disponibles:"
		ls /dev/sd*1 | grep -v sda1 		
		read -p "Seleccione dispositivo a montar: " disp
		read -p "Ingrese un nombre para el dispositivo: " name
		pmount $disp $name
		;;
	#si la entrada es "u",desmonto
	u)
		echo "Dispositivos disponibles:"
		ls /media/
		echo ""
		read -p "Seleccione dispostivo a desmontar: " disp
		pumount $disp
		;;
esac