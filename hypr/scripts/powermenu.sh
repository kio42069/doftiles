#!/usr/bin/env bash

op=$( echo -e "  Poweroff\n  Reboot\n  Hibernate\n  Lock\n  Logout" | wofi -i --dmenu --conf ~/.config/hypr/wofi/config --style ~/.config/hypr/wofi/style.css --width 300 --height 300 | awk '{print tolower($2)}' )
# -i --dmenu --width 300 --height 200 

case $op in
  poweroff)
    ;&
  reboot)
    ;&
  lock)
    swaylock -f -c 000000
    ;;
  logout)
    pkill Hyprland
    ;;
  hibernate)
    systemctl hibernate
    ;;
esac
