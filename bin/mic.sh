#!/bin/bash
pamixer --source 1 -t 
if [ "$(pamixer --source 1 --get-mute)" = "true" ]; then
	dunstify -r 444 -i " " "Mic muted"
else 
	dunstify -r 444 -i " " "Mic open"
fi
