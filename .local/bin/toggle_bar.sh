#!/bin/bash

process=$(pidof polybar)
if [ -z "$process" ]; then
    polybar & disown
else
    pkill polybar
    echo mu!
fi
