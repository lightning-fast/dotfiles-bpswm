#!/bin/bash

# Check if Spotify is running
if ! playerctl --player=spotify status &> /dev/null; then
    echo ""  # Default Spotify icon
    exit 0
fi

# Get play/pause status
status=$(playerctl --player=spotify status 2>/dev/null)

# Output colored icon based on status
if [ "$status" = "Playing" ]; then
    echo "%{F#0974ca}%{F-}"  # Green pause icon
else
    echo "%{F#ff5555}%{F-}"  # Red play icon
fi
