#!/usr/bin/env bash

option=$(printf "Gruvbox-Materials\0icon\x1f$HOME/.config/backgrounds/assets/gruvbox.png\nCatppuccin\0icon\x1f$HOME/.config/backgrounds/assets/Catppuccin.png\nTokyo\0icon\x1f$HOME/.config/backgrounds/assets/Tokyo-logo.png" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

case "$option" in
"Gruvbox-Materials")
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/kitty/current-theme.conf" "$HOME/.config/kitty"                                       #kitty
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/rofi/color.rasi" "$HOME/.config/rofi/type-2/colors"                                   #rofi
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/swaync/colors.css" "$HOME/.config/swaync/colors"                                      #swaync
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/waybar/colors.css" "$HOME/.config/waybar/colors"                                      #waybar
  cp -r "$HOME/.config/colorschemes/gruvbox-materials/icons/." "$HOME/.config/backgrounds/assets"                                           #icons
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/discord/quickCss.css" "$HOME/.var/app/com.discordapp.Discord/config/Vencord/settings" #discord theme
  cp -f "$HOME/.config/colorschemes/gruvbox-materials/starship/starship.toml" "$HOME/.config"                                               #starship
  cp -r "$HOME/.config/colorschemes/gruvbox-materials/hypr-apps/." "$HOME/.config/hypr"                                                     #hypr apps
  bash "$HOME/scripts/reload-config.sh"                                                                                                     #reload config
  cp -r "$HOME/.config/colorschemes/gruvbox-materials/bg/hyprlock-bg.png" "$HOME/.config/backgrounds/"
  awww img "$HOME/.config/backgrounds/shaded.jpg" --transition-fps 165 --transition-step 255 --transition-type any & #wallpaper chnage
  nwg-look
  ;;

"Catppuccin")
  cp -f "$HOME/.config/colorschemes/catppuccin/kitty/current-theme.conf" "$HOME/.config/kitty"                                       #kitty
  cp -f "$HOME/.config/colorschemes/catppuccin/rofi/color.rasi" "$HOME/.config/rofi/type-2/colors"                                   #rofi
  cp -f "$HOME/.config/colorschemes/catppuccin/swaync/colors.css" "$HOME/.config/swaync/colors"                                      #swaync
  cp -f "$HOME/.config/colorschemes/catppuccin/waybar/colors.css" "$HOME/.config/waybar/colors"                                      #waybar
  cp -r "$HOME/.config/colorschemes/catppuccin/icons/." "$HOME/.config/backgrounds/assets"                                           #icons
  cp -f "$HOME/.config/colorschemes/catppuccin/discord/quickCss.css" "$HOME/.var/app/com.discordapp.Discord/config/Vencord/settings" #discord theme
  cp -f "$HOME/.config/colorschemes/catppuccin/starship/starship.toml" "$HOME/.config"                                               #starship
  cp -r "$HOME/.config/colorschemes/catppuccin/hypr-apps/." "$HOME/.config/hypr"                                                     #hypr apps
  bash "$HOME/scripts/reload-config.sh"                                                                                              #reload config
  cp -r "$HOME/.config/colorschemes/catppuccin/bg/hyprlock-bg.png" "$HOME/.config/backgrounds/"
  awww img "$HOME/.config/backgrounds/shaded.png" --transition-fps 165 --transition-step 255 --transition-type any & #wallpaper chnage
  nwg-look
  ;;

"Tokyo")
  cp -f "$HOME/.config/colorschemes/Tokyo/kitty/current-theme.conf" "$HOME/.config/kitty"                                       #kitty
  cp -f "$HOME/.config/colorschemes/Tokyo/rofi/color.rasi" "$HOME/.config/rofi/type-2/colors"                                   #rofi
  cp -f "$HOME/.config/colorschemes/Tokyo/swaync/colors.css" "$HOME/.config/swaync/colors"                                      #swaync
  cp -f "$HOME/.config/colorschemes/Tokyo/waybar/colors.css" "$HOME/.config/waybar/colors"                                      #waybar
  cp -r "$HOME/.config/colorschemes/Tokyo/icons/." "$HOME/.config/backgrounds/assets"                                           #icons
  cp -f "$HOME/.config/colorschemes/Tokyo/discord/quickCss.css" "$HOME/.var/app/com.discordapp.Discord/config/Vencord/settings" #discord theme
  cp -f "$HOME/.config/colorschemes/Tokyo/starship/starship.toml" "$HOME/.config"                                               #starship
  cp -r "$HOME/.config/colorschemes/Tokyo/hypr-apps/." "$HOME/.config/hypr"                                                     #hypr apps
  bash "$HOME/scripts/reload-config.sh"                                                                                         #reload config
  cp -r "$HOME/.config/colorschemes/Tokyo/bg/hyprlock-bg.png" "$HOME/.config/backgrounds/"
  awww img "$HOME/.config/backgrounds/Tokyo.jpg" --transition-fps 165 --transition-step 255 --transition-type any & #wallpaper chnage
  nwg-look
  ;;
esac
