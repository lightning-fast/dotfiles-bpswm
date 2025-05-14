#!/bin/bash

# Usage: app-icon.sh <wm_class> <icon>

app="$1"
icon="$2"
running=$(~/.config/polybar/scripts/is_app_running.sh "$app")

if [ "$running" -eq 1 ]; then
    echo "%{F#a3be8c}$icon%{F-}"
else
    echo "%{F#5c6370}$icon%{F-}"
fi

