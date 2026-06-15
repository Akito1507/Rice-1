#!/usr/bin/env bash

mkdir -p $HOME/.config/backgrounds && cp -rv $HOME/Rice-1/backgrounds $HOME/.config/backgrounds #Wallpapers/assets

cp -v $HOME/Rice-1/bashrc $HOME/.config/backgrounds #BashRc

mkdir -p $HOME/.config/colorschemes && cp -rv $HOME/Rice-1/colorschemes $HOME/.config/colorschemes #Themes

mkdir -p $HOME/.var/app/com.discordapp.Discord/config/Vencord/themes && cp -rv $HOME/Rice-1/discord $HOME/.var/app/com.discordapp.Discord/config/Vencord/themes #Discord Themes

mkdir -p $HOME/.config/fastfetch && cp -rv $HOME/Rice-1/fastfetch $HOME/.config/fastfetch #Fastfetch

mkdir -p $HOME/.config/fish && cp -rv $HOME/Rice-1/fish $HOME/.config/fish #fish config

mkdir -p $HOME/.themes && cp -rv $HOME/Rice-1/gtk-themes $HOME/.themes/gtk-themes #gtk themes

mkdir -p $HOME/.config/hypr && cp -rv $HOME/Rice-1/hypr $HOME/.config/hypr #hyprland config

mkdir -p $HOME/.config/kitty && cp -rv $HOME/Rice-1/kitty $HOME/.config/kitty #kitty

mkdir -p $HOME/.config/rofi && cp -rv $HOME/Rice-1/rofi $HOME/.config/rofi #rofi

mkdir -p $HOME/scripts && cp -rv $HOME/Rice-1/scripts $HOME/scripts #scripts

cp -rv $HOME/Rice-1/starship $HOME/.config #starship

mkdir -p $HOME/.config/swaync && cp -rv $HOME/Rice-1/swaync $HOME/.config/swaync #swaync

mkdir -p $HOME/.config/waybar && cp -rv $HOME/Rice-1/waybar $HOME/.config/waybar #waybar

mkdir -p $HOME/.config/yazi && cp -rv $HOME/Rice-1/yazi $HOME/.config/yazi #yazi

cd $HOME/scripts && chmod +x themes-selector.sh && chmod +x master-selector.sh && chmod +x config-menu.sh && chmod +x rofi-launch.sh && chmod +x wallpaper-selector.sh && cd scripts && chmod +x theme-selector.sh && chmod +x master-selector.sh && chmod +x config-menu.sh && chmod +x rofi-launch.sh && chmod +x config-reload.sh #make scripts executable as files
