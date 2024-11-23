#!/bin/bash

if [ "$(wmctrl -l | wc -l)" == "0" ]; then
    notify-send $(wmctrl -l)
    feh --bg-scale ~/.local/share/wallpapers/rainbow_cat.png
else
    feh --bg-scale ~/.local/share/wallpapers/dark.png
fi
