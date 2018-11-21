#!/bin/bash
#este script guarda la lista de cosas por hacer en todof.txt y luego las muestra como notificacion
todo -l > /home/rulo/todof.txt
#sleep 1
notify-send TODO "`tail /home/rulo/todof.txt`"
exit
