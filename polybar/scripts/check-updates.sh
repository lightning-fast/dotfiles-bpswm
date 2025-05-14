#!/bin/bash

# Count upgradeable packages using apt (Debian/Ubuntu)
updates=$(apt list --upgradeable 2>/dev/null | grep -c upgradable)

# If there are updates available, show them with a color
if [ "$updates" -gt 0 ]; then
    echo "%{F#f38ba8} $updates%{F-}"  # Red color for updates (change #f38ba8 to your preferred color)
else
    echo ""  # Show nothing if no updates
fi
