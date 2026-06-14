#!/usr/bin/env fish

set option (printf "Hyprland\0icon\x1f/home/akito/.config/backgrounds/assets/hyprland-logo.png\nKitty\0icon\x1f/home/akito/.config/backgrounds/assets/kitty-logo.png\nWaybar\0icon\x1f/home/akito/.config/backgrounds/assets/archlinux-logo.png\nSwayNC\0icon\x1f/home/akito/.config/backgrounds/assets/wayland-logo.png\nRofi\0icon\x1f/home/akito/.config/backgrounds/assets/rofi-logo.jpg\nYazi\0icon\x1f/home/akito/.config/backgrounds/assets/yazi-logo.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

switch $option
    case "Hyprland"
        kitty --hold yazi "/home/akito/.config/hypr/modules"
    case "Kitty"
        kitty --hold nvim "/home/akito/.config/kitty/kitty.conf"
    case "Waybar"
        kitty --hold nvim "/home/akito/.config/waybar/config.jsonc"
    case "SwayNC"
        kitty --hold nvim "/home/akito/.config/swaync/config.json"
    case "Rofi"
        kitty --hold nvim "/home/akito/.config/rofi/type-2/style-7.rasi"
    case "Yazi"
        kitty --hold nvim "/home/akito/.config/yazi/yazi.toml"
end
