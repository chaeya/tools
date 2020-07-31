#!/bin/bash
#xrandr --output HDMI-1 --primary --mode 3440x1440 --output eDP-1 --mode 1920x1080 --left-of HDMI-1

LOG=$0.log

xrandr -q > $LOG
#xrandr --verbose --output eDP-1-1 --mode 1920x1080 --dpi 96 > /var/log/lightdm/xrandr.log 2>&1
xrandr --verbose --output eDP-1 --mode 1920x1080 --primary --output HDMI-1 --mode 3440x1440 --left-of eDP-1 > $LOG 2>&1
#xrandr --verbose --output eDP-1 --mode 1920x1080 --primary --output HDMI-1 --mode 3440x1440 --left-of HDMI-1  > $LOG 2>&1
#xrandr --verbose --output eDP-1-1 --mode 1920x1080 --primary --output HDMI-1-1 --mode 3440x1440 --left-of HDMI-1-1 > $LOG 2>&1
#xrandr --verbose --output HDMI-1-1 --primary --mode 3440x1440 --output eDP-1-1 --mode 1920x1080 --left-of HDMI-1-1
#xrandr --verbose --output HDMI-1 --primary --mode 3440x1440 --output eDP-1 --mode 1920x1080 --left-of HDMI-1
