#!/bin/bash
options="shutdown\nreboot\nlogout\nsuspend\nhibernate\nlock\nexit"
chosen=$(echo -e "$options" | wofi --dmenu --prompt "not forgotten" --width 300 --height 234 --location=top_left -y 15 -x 15 )

case $chosen in
  "shutdown") systemctl poweroff ;;
  "reboot")   systemctl reboot ;;
  "logout")   niri msg action quit --skip-confirmation ;;
  "suspend")  systemctl suspend ;;
  "hibernate") systemctl hibernate ;;
  "lock")     swaylock ;;
  "exit")     exit 0 ;;
  *)          exit 1 ;;
esac