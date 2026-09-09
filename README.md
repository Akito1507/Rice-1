Dependencies
                
+ fish (not required but preferred)
+ awww
+ swaync
+ waybar
+ rofi
+ kitty
+ starship
+ nwg-look
+ vesktop
+ fzf
+ fastfetch
+ nautilus
+ yazi
+ pavucontrol
+ hyprlock
+ hyprshot
+ caskaydia nerd font
+ sddm

## Install all dependencies

```bash
yay -S --needed hyprland fish awww swaync waybar rofi kitty starship nwg-look fzf fastfetch nautilus yazi pavucontrol hyprlock-git hyprshot xdg-desktop-portal-hyprland xdg-desktop-portal-gnome xdg-desktop-portal-gtk polkit-gnome flatpak ttf-cascadia-code-nerd && flatpak install com.discordapp.Discord && sh -c "$(curl -sS https://vencord.dev/install.sh)"
```

## One Command Install
```bash
git clone https://github.com/Akito1507/Rice-1.git && cd Rice-1 && chmod +x install.sh && ./install.sh && chsh -s $(which fish)
```

