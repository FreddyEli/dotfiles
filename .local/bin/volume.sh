#!/bin/bash
iconDir="/home/estatuadetamal/.config/dunst/icons/"
current="$(pamixer --get-volume-human | sed s/%//)" 
function post(){
	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_${1}.svg" -u low "Volume" "${current}%" -h int:value:$current
	mpv "/home/estatuadetamal/.config/dunst/icons/pop.m4a"
} 

if [ $current == "muted" ]; then
	dunstify -t 2000 -r 1234 -a "Volume" -i "/home/estatuadetamal/.config/dunst/icons/volume_muted.svg" -u low "Muted" 
elif  [ $current = "0" ]; then
	post muted
elif [ $current  -lt 26 ]; then
	post low
elif [ $current  -lt 51 ]; then
	post med
elif [ $current  -lt 71 ]; then
	post high
else
	post over
        fi
