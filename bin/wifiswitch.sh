#!/bin/bash

#guardo un valor en sc.txt que me dice si la red esta encendida o no
#si switch=1,apago y cambio a 0. caso contrario, viceversa

SWITCH=`cat /home/rulo/sc.txt`
case $SWITCH in
	0) 
		nmcli networking on
		echo 1 > /home/rulo/sc.txt
		;;

	1)
		nmcli networking off
		echo 0 > /home/rulo/sc.txt
		;;
esac

