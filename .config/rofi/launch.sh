#!/bin/bash

apps_arr=(
    "󰈹  firefox"
    "  kitty"
    "  steam"
    "󰙯  vesktop"
    "󰍳  minetest"
    "󰘸  anki"
    "  thunar"
    "󰺵  retroarch"
    "  oneko"
)

apps=$(printf '%s\n' "${apps_arr[@]}" | sort)
select=$(echo -e "$apps" | rofi -dmenu -i)

if [ -n "$select" ]; then
    select=$(echo "$select" | sed 's/^...//')
    "$select" &
fi

