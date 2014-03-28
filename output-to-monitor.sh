#!/bin/bash

MONITOR=${1^^}
OPTIONS=$2

case $MONITOR in
  LVDS | DEFAULT | NONE | "" )
    xrandr --output VGA-0 --off --output HDMI-0 --off $OPTIONS
    ;;
  VGA | HDMI )
    if (xrandr | grep '\-0' | grep 'connected' > /dev/null); then
      xrandr --output $MONITOR-0 --auto --right-of LVDS $OPTIONS
    fi
    ;;
esac
