#!/bin/bash

# Set primary monitor to right (HDMI-1), secondary on left (DP-1)
xrandr --output HDMI-0 --auto --left-of DP-4
xrandr --output DP-4 --primary --auto --rate 270
