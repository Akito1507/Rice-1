#!/usr/bin/env bash

option=$(printf "Shutdown\0icon\x1f$HOME/.config/backgrounds/assets/power-logo.png\nLogout\0icon\x1f$HOME/.config/backgrounds/assets/logout-logo.png\nReboot\0icon\x1f$HOME/.config/backgrounds/assets/restart-logo.png\nReboot UEFI\0icon\x1f$HOME/.config/backgrounds/assets/restart-logo.png\nLock\0icon\x1f$HOME/.config/backgrounds/assets/lock-logo.png\nSuspend\0icon\x1f$HOME/.config/backgrounds/assets/suspend-logo.png" | rofi -dmenu -p "Power Menu" -theme "~/.config/rofi/type-2/style-7-config")

case "$option" in
    "Shutdown")
        systemctl poweroff
        ;;
    "Logout")
       command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()' 
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Reboot UEFI")
        systemctl reboot --firmware-setup
        ;;
    "Lock")
        hyprlock
        ;;
    "Suspend")
        systemctl suspend
        ;;
esac
