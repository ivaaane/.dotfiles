#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

# SCRIPT DRASTICALLY MODIFIED BY @ivaaane !!

function get_volume {
  amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
  amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
  iconSound="audio-volume-high"
  iconMuted="audio-volume-muted"
  if is_mute ; then
    dunstify -i $iconMuted -r 2593 -u low "mute"
  else
    volume=$(get_volume)
    dunstify -i $iconSound -r 2593 -u low "$volume%"
  fi
}

case $1 in
  up)
    amixer -D pulse sset Master 1%+ > /dev/null
    send_notification
    ;;
  down)
    amixer -D pulse sset Master 1%- > /dev/null
    send_notification
    ;;
  mute)
    amixer -D pulse sset Master 0% > /dev/null
    send_notification
    ;;
esac
