#!/bin/bash
 #xmodmap ~/.Xmodmap 
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"
 #background & colors
feh --no-fehbg --bg-fill --geometry +0+0 /home/estatuadetamal/pictures/wallpapers/025.jpg &
 #picom
#picom -b --experimental-backends
picom -b
 #dunst
# . "~/.cache/wal/colors.sh"
#dunst \
#	-frame_width 0 \
#        -lb "${color0}" \
#        -nb "${color0}" \
#        -cb "${color0}" \
#        -lf "${color7}" \
#        -bf "${color7}" \
#        -cf "${color7}" \
#        -nf "${color7}" &
 dunst &
 #Clock
xsetroot -name  "$(date| cut -f1,2 -d:)"
tmp=$(date +%S)
sleep $((60-tmp))
while true; do 
	xsetroot -name  "$(date| cut -f1,2 -d:)"
	sleep 60
done
