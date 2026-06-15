#!/usr/bin/env bash

option=$(printf "Clouds\0icon\x1f$HOME/.config/backgrounds/shaded.jpg\nLandscape-1\0icon\x1f$HOME/.config/backgrounds/shaded.png\nArch-Rainbow\0icon\x1f$HOME/.config/backgrounds/arch-rainbow.png\nLandscape-2\0icon\x1f$HOME/.config/backgrounds/better_shaded_landscape.jpg\nCar-Sunset\0icon\x1f$HOME/.config/backgrounds/car-with-full-moon-background.jpg\nLofi-Light\0icon\x1f$HOME/.config/backgrounds/lofiwallpaper.png\nBlue-Window\0icon\x1f$HOME/.config/backgrounds/nice-blue-background.png\nTokyo\0icon\x1f$HOME/.config/backgrounds/Tokyo.jpg\nForest\0icon\x1f$HOME/.config/backgrounds/background.jpg" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

case "$option" in
    "Clouds")
        awww img "$HOME/.config/backgrounds/shaded.jpg" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Landscape-1")
        awww img "$HOME/.config/backgrounds/shaded.png" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Arch-Rainbow")
        awww img "$HOME/.config/backgrounds/arch-rainbow.png" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Landscape-2")
        awww img "$HOME/.config/backgrounds/better_shaded_landscape.jpg" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Car-Sunset")
        awww img "$HOME/.config/backgrounds/car-with-full-moon-background.jpg" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Lofi-Light")
        awww img "$HOME/.config/backgrounds/lofiwallpaper.png" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Blue-Window")
        awww img "$HOME/.config/backgrounds/nice-blue-background.png" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Tokyo")
        awww img "$HOME/.config/backgrounds/Tokyo.jpg" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;
    "Forest")
        awww img "$HOME/.config/backgrounds/background.jpg" --transition-fps 60 --transition-step 255 --transition-type any &
        ;;

esac
