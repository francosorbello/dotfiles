#!/bin/bash
#script que activa/desactiva el dual screen(posiblemente solo funcione con el monitor de mi casa)
#utiliza el output generado por arandr. Necesita xrandr.

if [ ! -f /home/rulo/dual.txt ]; then
	touch /home/rulo/dual.txt && echo 0 > /home/rulo/dual.txt
fi
SWITCH=`cat /home/rulo/dual.txt`
case $SWITCH in
	0) 
		/home/rulo/.screenlayout/single.sh
		echo 1 > /home/rulo/dual.txt
		notify-send "Dual Screen desactivado"
		;;
	1)
		/home/rulo/.screenlayout/dual.sh
		echo 0 > /home/rulo/dual.txt
		notify-send "Dual Screen activado"
		;;
esac