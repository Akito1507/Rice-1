#!/usr/bin/env fish

set option (printf "Configs\0icon\x1f/home/akito/.config/backgrounds/assets/config-logo.png\nWallpapers\0icon\x1f/home/akito/.config/backgrounds/assets/wallpaper-logo.png\nThemes\0icon\x1f/home/akito/.config/backgrounds/assets/themes.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

switch $option
    case "Configs"
    fish /./home/akito/scripts/config-menu.sh
    case "Wallpapers"
    fish /./home/akito/scripts/wallpaper-selector.sh 
    case "Themes"
    fish /./home/akito/scripts/themes-selector.sh 
end