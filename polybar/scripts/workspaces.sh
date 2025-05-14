#!/bin/bash

# Get the list of workspaces in BSPWM
workspaces=$(bspc query -D)

# Get the current workspace
current_workspace=$(bspc query -D -d focused)

# Initialize output string
output=""

# Loop through all workspaces and color them based on focus
for ws in $workspaces; do
    if [ "$ws" == "$current_workspace" ]; then
        output+="%{F#FFCC00}$ws "  # Highlight the active workspace with yellow
    else
        output+="$ws "  # Default color for inactive workspaces
    fi
done

echo "$output"

