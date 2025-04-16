#!/bin/bash

get_volume() {
    dunstify "Volume" "$(amixer get Master | grep -oP '\d+%' | head -n 1)" -u low -r 2593
}

case "$1" in
    up)
        amixer set Master 1%+ > /dev/null
        get_volume
        ;;
    down)
        amixer set Master 1%- > /dev/null
        get_volume
        ;;
    mute)
        amixer set Master 0% > /dev/null
        get_volume
        ;;
    *)
        echo "ERROR"
        exit 1
        ;;
esac
