#!/bin/bash

# Define pinned apps (icon and WM_CLASS name or part of it)
apps=(
    ":firefox"
    ":nemo"
    "ﭮ:discord"
    ":kitty"
)

# Get list of open windows and their class
open_windows=$(wmctrl -lx | awk '{print $3}' | tr '[:upper:]' '[:lower:]')

output=""

for app in "${apps[@]}"; do
    icon="${app%%:*}"
    match="${app##*:}"

    if echo "$open_windows" | grep -q "$match"; then
        # App is running – highlight
        output+="%{F#a3be8c}$icon%{F-}  "
    else
        # App is not running – faded
        output+="%{F#5c6370}$icon%{F-}  "
    fi
done

echo "$output"
