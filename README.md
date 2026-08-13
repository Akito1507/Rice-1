Dependencies
                
+ fish (not required but preferred)
+ awww
+ swaync
+ waybar
+ rofi
+ kitty
+ starship
+ nwg-look
+ discord with vencord (vesktop might work if the location is the same. prob not)
+ fzf
+ fastfetch
+ nautilus
+ yazi
+ pavucontrol
+ hyprlock
+ hyprshot
+ caskaydia Nerd Font
+ auto-cpufreq
+ supergfxctl

## Install all dependencies

```bash
yay -S --needed hyprland-git fish awww swaync waybar rofi kitty starship nwg-look fzf fastfetch nautilus yazi pavucontrol hyprlock-git hyprshot xdg-desktop-portal-hyprland xdg-desktop-portal-gnome xdg-desktop-portal-gtk polkit-gnome flatpak ttf-cascadia-code-nerd supergfxctl qt5-wayland qt6-wayland && flatpak install dev.vencord.Vesktop && sh -c "$(curl -sS https://vencord.dev/install.sh)"
```

## One Command Install
```bash
git clone -b Laptop-Version https://github.com/Akito1507/Rice-1.git && cd Rice-1 && chmod +x install.sh && ./install.sh && chsh -s $(which fish)
```

## My Apps
```bash
flatpak install app.zen_browser.zen md.obsidian.Obsidian com.spotify.Client com.github.vikdevelop.photopea_app org.localsend.localsend_app && yay -S nvim --needed && git clone https://github.com/LazyVim/starter ~/.config/nvim && rm -rf ~/.config/nvim/.git
```
