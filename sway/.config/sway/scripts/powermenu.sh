#!/bin/bash
# меню питания через fuzzel

choice=$(printf '%s\n' lock suspend reboot shutdown \
    | fuzzel --dmenu --hide-prompt --lines 4 --width 24)

case "$choice" in
    lock)     pidof hyprlock || hyprlock ;;
    suspend)  systemctl suspend ;;
    reboot)   systemctl reboot ;;
    shutdown) systemctl poweroff ;;
esac
