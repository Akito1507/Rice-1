Screenshots

![](https://raw.githubusercontent.com/Akito1507/Rice-1/refs/heads/Desktop-Version/examples/2026-06-06-034658_hyprshot.png)
> Theme Changer/Wallpaper Changer

![](https://raw.githubusercontent.com/Akito1507/Rice-1/refs/heads/Desktop-Version/examples/2026-06-06-034734_hyprshot.png)
> Rofi app launcher (not mine, cant remember where i got it from)

![](https://github.com/Akito1507/Rice-1/blob/Desktop-Version/examples/2026-06-06-035019_hyprshot.png)
> Gtk themes (not made by me)

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
yay -S --needed hyprland-git fish awww swaync waybar rofi kitty starship nwg-look fzf fastfetch nautilus yazi pavucontrol hyprlock-git hyprshot xdg-desktop-portal-hyprland xdg-desktop-portal-gnome xdg-desktop-portal-gtk polkit-gnome flatpak ttf-cascadia-code-nerd supergfxctl && flatpak install com.discordapp.Discord && sh -c "$(curl -sS https://vencord.dev/install.sh)"
```

## One Command Install
```bash
git clone -b Laptop-Version https://github.com/Akito1507/Rice-1.git && cd Rice-1 && chmod +x install.sh && ./install.sh && chsh -s $(which fish)
```

## Optional: Some of my favorite apps
```bash
yay -S --needed kde-connect hypr-kdeconnect-fix pipwire wireplumber xdg-desktop-portal-hyprland qt6-wayland obs nvim
```

