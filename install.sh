#!/usr/bin/env bash

mkdir -p $HOME/.config/backgrounds && cp -rv $HOME/Rice-1/backgrounds/. $HOME/.config/backgrounds/ #Wallpapers/assets

mkdir -p $HOME/.config/colorschemes && cp -rv $HOME/Rice-1/colorschemes/. $HOME/.config/colorschemes/ #Themes

mkdir -p $HOME/.var/app/dev.vencord.Vesktop/config/vesktop/themes && cp -rv $HOME/Rice-1/discord/. $HOME/.var/app/dev.vencord.Vesktop/config/vesktop/themes/ #Discord Themes

mkdir -p $HOME/.config/fastfetch && cp -rv $HOME/Rice-1/fastfetch/. $HOME/.config/fastfetch/ #Fastfetch

mkdir -p $HOME/.config/fish && cp -rv $HOME/Rice-1/fish/. $HOME/.config/fish/ #fish config

mkdir -p $HOME/.themes && cp -rv $HOME/Rice-1/gtk-themes/. $HOME/.themes/ #gtk themes

mkdir -p $HOME/.config/hypr && cp -rv $HOME/Rice-1/hypr/. $HOME/.config/hypr/ #hyprland config

mkdir -p $HOME/.config/kitty && cp -rv $HOME/Rice-1/kitty/. $HOME/.config/kitty/ #kitty

mkdir -p $HOME/.config/rofi && cp -rv $HOME/Rice-1/rofi/. $HOME/.config/rofi/ #rofi

mkdir -p $HOME/scripts && cp -rv $HOME/Rice-1/scripts/. $HOME/scripts/ #scripts

cp -rv $HOME/Rice-1/starship/. $HOME/.config/ #starship

mkdir -p $HOME/.config/swaync && cp -rv $HOME/Rice-1/swaync/. $HOME/.config/swaync/ #swaync

mkdir -p $HOME/.config/waybar && cp -rv $HOME/Rice-1/waybar/. $HOME/.config/waybar/ #waybar

mkdir -p $HOME/.config/yazi && cp -rv $HOME/Rice-1/yazi/. $HOME/.config/yazi/ #yazi

sudo systemctl disable sddm
