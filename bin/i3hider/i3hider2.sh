#!/bin/bash
if [ ! -f /home/rulo/sci3.txt ]; then
	touch /home/rulo/sci3.txt && echo 0 > /home/rulo/sci3.txt
fi
SWITCH=`cat /home/rulo/sci3.txt`
case $SWITCH in
	0) 
		yes | cp ~/dotfiles/bin/i3hider/hidden ~/.config/i3/config
		i3-msg restart
		sleep 5
		i3-msg bar mode toggle ,gaps inner all set 0 , gaps outer all set 0
		echo 1 > /home/rulo/sci3.txt

		;;

	1)
		yes | cp ~/dotfiles/bin/i3hider/not_hidden ~/.config/i3/config
		i3-msg restart
		echo 0 > /home/rulo/sci3.txt
		;;
esac
