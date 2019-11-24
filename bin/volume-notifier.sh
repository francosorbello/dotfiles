#!/bin/bash
VOL=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')
if [[ $ID=="" ]]; then
	ID=0
fi
VOLID=$(notify-send.py -r $VOLID $VOL)
