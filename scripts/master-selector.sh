#!/usr/bin/env bash

option=$(printf "Configs\0icon\x1f$HOME/.config/backgrounds/assets/config-logo.png\nWallpapers\0icon\x1f$HOME/.config/backgrounds/assets/wallpaper-logo.png\nThemes\0icon\x1f$HOME/.config/backgrounds/assets/themes.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

case "$option" in
    "Configs")
        bash "$HOME/scripts/config-menu.sh"
        ;;
    "Wallpapers")
        bash "$HOME/scripts/wallpaper-selector.sh"
        ;;
    "Themes")
        bash "$HOME/scripts/themes-selector.sh"
        ;;
esac
