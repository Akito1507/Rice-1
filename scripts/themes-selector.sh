#!/usr/bin/env fish

set option (printf "Gruvbox-Materials\0icon\x1f/home/akito/.config/backgrounds/assets/gruvbox.png\nCatppuccin\0icon\x1f/home/akito/.config/backgrounds/assets/Catppuccin.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

switch $option
    case "Gruvbox-Materials"
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/kitty/current-theme.conf /home/akito/.config/kitty
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/rofi/current-theme.rasi /home/akito/.config/rofi/type-2/colors
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/swaync/current-theme.css /home/akito/.config/swaync/colors
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/waybar/current-theme.css /home/akito/.config/waybar/colors
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/icons/config-logo.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/icons/wallpaper-logo.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/icons/themes.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/discord/quickCss.css /home/akito/.var/app/com.discordapp.Discord/config/Vencord/settings
    cp -f /home/akito/.config/colorschemes/gruvbox-materials/starship/starship.toml /home/akito/.config
    fish /./home/akito/scripts/reload-config.sh 
    awww img /home/akito/.config/backgrounds/shaded.jpg --transition-fps 165 --transition-step 255 --transition-type any &
    nwg-look
    case "Catppuccin"
    cp -f /home/akito/.config/colorschemes/catppuccin/kitty/current-theme.conf /home/akito/.config/kitty
    cp -f /home/akito/.config/colorschemes/catppuccin/rofi/current-theme.rasi /home/akito/.config/rofi/type-2/colors
    cp -f /home/akito/.config/colorschemes/catppuccin/swaync/current-theme.css /home/akito/.config/swaync/colors
    cp -f /home/akito/.config/colorschemes/catppuccin/waybar/current-theme.css /home/akito/.config/waybar/colors
    cp -f /home/akito/.config/colorschemes/catppuccin/icons/config-logo.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/catppuccin/icons/wallpaper-logo.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/catppuccin/icons/themes.png /home/akito/.config/backgrounds/assets
    cp -f /home/akito/.config/colorschemes/catppuccin/discord/quickCss.css /home/akito/.var/app/com.discordapp.Discord/config/Vencord/settings
    cp -f /home/akito/.config/colorschemes/catppuccin/starship/starship.toml /home/akito/.config
    fish /./home/akito/scripts/reload-config.sh
    awww img /home/akito/.config/backgrounds/shaded.png --transition-fps 165 --transition-step 255 --transition-type any &
    nwg-look

end
