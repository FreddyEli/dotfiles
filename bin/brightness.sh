#!/bin/zsh
iconDir="/home/estatuadetamal/.config/dunst/icons/"
current=$(light -G) 

function post_up() {
	#current="$(light -G)" 
	printf -v current "%.1f" "$(light -G)"
	dunstify -t 2000 -r 1235 -a "Brightness" -i "/home/estatuadetamal/.config/dunst/icons/brightness_up.svg" -u low "Brightness" "${current}%" -h int:value:$current
}

function post_down() {
	printf -v current "%.1f" "$(light -G)"
	dunstify -t 2000 -r 1235 -a "Brightness" -i "/home/estatuadetamal/.config/dunst/icons/brightness_down.svg" -u low "Brightness" "${current}%" -h int:value:$current
}

if  [ $1 = "up" ]; then
	if    (($current < 10)) ; then
		light -A 1 &  post_up
	elif  (($current < 20)); then
		light -A 2 & post_up
	else
		light -A 5 & post_up
        fi

else
	if    (($current < 10)) ; then
		light -U 1 & post_down
	elif  (($current < 20)) ; then
		light -U 2 & post_down
        else
		light -U 5 & post_down
        fi
fi

#if  [ $current = "0" ]; then
#	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_muted.svg" -u low "Volume" "0%" -h int:value:$current
#elif [ $current  -lt 16 ]; then
#	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_low.svg" -u low "Volume" "${current}%" -h int:value:$current
#elif [ $current  -lt 31 ]; then
#	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_med.svg" -u low "Volume" "${current}%" -h int:value:$current
#elif [ $current  -lt 56 ]; then
#	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_high.svg" -u low "Volume" "${current}%" -h int:value:$current
#        else
#	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_over.svg" -u low "Volume" "${current}%" -h int:value:$current
#        fi
