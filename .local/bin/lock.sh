#!/bin/bash

tmpbg='/tmp/screen.png'

scrot "$tmpbg"
magick "$tmpbg" -filter Gaussian -thumbnail 20% -sample 500% "$tmpbg"
i3lock -i "$tmpbg" --nofork

rm /tmp/screen.png
