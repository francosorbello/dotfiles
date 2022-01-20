#!/bin/bash

#scroll invertido
synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111
#desactivar touchpad al escribir pt 1
synclient PalmDetect=1
synclient PalmMinWidth=4
synclient PalmMinWidth=50

#desactivar touchpad al escribir pt 2
killall syndaemon
syndaemon -d -K -i 1 -R