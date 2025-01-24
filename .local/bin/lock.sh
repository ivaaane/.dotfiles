#!/bin/sh

BLANK='#000000'
DEFAULT='#d79921ee'
TEXT='#000000'
WRONG='#cc241d'
VERIFYING='#ffffff'

i3lock \
--color $BLANK \
--insidever-color=$BLANK     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$BLANK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$BLANK          \
--line-color=$BLANK          \
--separator-color=$BLANK     \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--layout-color=$TEXT         \
--keyhl-color=$DEFAULT       \
--bshl-color=$DEFAULT        \
\
