#!/bin/bash

wid=$1
state=$2

if [ "$state" = "fullscreen" ]; then
    bspc config top_padding 0
    pkill -USR1 polybar  # Optional: Hide polybar using custom signal
else
    bspc config top_padding 20  # Adjust to your polybar height
    pkill -USR2 polybar  # Optional: Show polybar using custom signal
fi

