#!/bin/bash
#con este script cambio los botones "repag" y "avpag" por inicio y fin y viceversa
xmodmap -e "keycode 110 = Prior"
xmodmap -e "keycode 112 = Home"
xmodmap -e "keycode 115 = Next"
xmodmap -e "keycode 117 = End"
