#!/usr/bin/env bash

option=$(printf "Hyprland\0icon\x1f$HOME/.config/backgrounds/assets/hyprland-logo.png\nKitty\0icon\x1f$HOME/.config/backgrounds/assets/kitty-logo.png\nWaybar\0icon\x1f$HOME/.config/backgrounds/assets/archlinux-logo.png\nSwayNC\0icon\x1f$HOME/.config/backgrounds/assets/wayland-logo.png\nRofi\0icon\x1f$HOME/.config/backgrounds/assets/rofi-logo.jpg\nYazi\0icon\x1f$HOME/.config/backgrounds/assets/yazi-logo.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

case "$option" in
    "Hyprland")
        kitty --hold yazi "$HOME/.config/hypr/modules"
        ;;
    "Kitty")
        kitty --hold nvim "$HOME/.config/kitty/kitty.conf"
        ;;
    "Waybar")
        kitty --hold nvim "$HOME/.config/waybar/config.jsonc"
        ;;
    "SwayNC")
        kitty --hold nvim "$HOME/.config/swaync/config.json"
        ;;
    "Rofi")
        kitty --hold nvim "$HOME/.config/rofi/type-2/style-7.rasi"
        ;;
    "Yazi")
        kitty --hold nvim "$HOME/.config/yazi/yazi.toml"
        ;;
esac
