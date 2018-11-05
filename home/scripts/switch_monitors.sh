#!/bin/sh



case $1 in
    "DP1" ) xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off;;
    "HDMI1" ) xrandr --output HDMI2 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output eDP1 --off --output VIRTUAL1 --off;;
esac
