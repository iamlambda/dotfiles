#!/bin/sh
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off
xrandr --output DP-0 --mode 1920x1080 --rate 144.00
xrandr --output HDMI-0 --mode 1920x1080 --rate 75
