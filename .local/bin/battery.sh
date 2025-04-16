#!/bin/bash
PERCENTAGE=$(cat /sys/class/power_supply/BAT0/capacity)
CHARGING=$(cat /sys/class/power_supply/AC0/online)
if [ $CHARGING == 1 ]; then
    echo C $PERCENTAGE%
else
    echo U $PERCENTAGE%
fi
