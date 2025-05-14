#!/bin/bash

# Usage: is_app_running.sh <wm_class>
# Returns '1' if running, '0' if not

app="$1"
wmctrl -lx | awk '{print tolower($3)}' | grep -q "$app" && echo "1" || echo "0"
