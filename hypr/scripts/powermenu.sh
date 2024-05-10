#!/usr/bin/env bash

op=$( echo -e "  Poweroff\n  Reboot\n  Suspend\n  Lock\n  Logout" | wofi -i --dmenu --width 300 --height 200 | awk '{print tolower($2)}' )

case $op in
  poweroff)
    ;&
  reboot)
    ;&
  suspend)
    systemctl $op
    ;;
  lock)
    swaylock -f -c 000000
    ;;
  logout)
    pkill Hyprland
    ;;
esac
