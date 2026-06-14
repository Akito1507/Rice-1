#!/usr/bin/env fish

set option (printf "Clouds\0icon\x1f/home/akito/.config/backgrounds/shaded.jpg\nLandscape-1\0icon\x1f/home/akito/.config/backgrounds/shaded.png\nArch-Rainbow\0icon\x1f/home/akito/.config/backgrounds/arch-rainbow.png\nLandscape-2\0icon\x1f/home/akito/.config/backgrounds/better_shaded_landscape.jpg\nCar-Sunset\0icon\x1f/home/akito/.config/backgrounds/car-with-full-moon-background.jpg\nLofi-Light\0icon\x1f/home/akito/.config/backgrounds/lofiwallpaper.png\nBlue-Window\0icon\x1f/home/akito/.config/backgrounds/nice-blue-background.png\nTokyo\0icon\x1f/home/akito/.config/backgrounds/Tokyo.jpg" | rofi -dmenu -p "Edit Config" -theme "~/.config/rofi/type-2/style-7-config")

switch $option
    case "Clouds"
         awww img /home/akito/.config/backgrounds/shaded.jpg --transition-fps 60 --transition-step 255 --transition-type any &
    case "Landscape-1"
         awww img /home/akito/.config/backgrounds/shaded.png --transition-fps 60 --transition-step 255 --transition-type any &
     case "Arch-Rainbow"
         awww img /home/akito/.config/backgrounds/arch-rainbow.png --transition-fps 60 --transition-step 255 --transition-type any &
     case "Landscape-2"
         awww img /home/akito/.config/backgrounds/better_shaded_landscape.jpg --transition-fps 60 --transition-step 255 --transition-type any &
     case "Car-Sunset"
         awww img /home/akito/.config/backgrounds/car-with-full-moon-background.jpg --transition-fps 60 --transition-step 255 --transition-type any &
      case "Lofi-Light"
         awww img /home/akito/.config/backgrounds/lofiwallpaper.png --transition-fps 60 --transition-step 255 --transition-type any &
     case "Blue-Window"
         awww img /home/akito/.config/backgrounds/nice-blue-background.png --transition-fps 60 --transition-step 255 --transition-type any &
    case "Tokyo"
        awww img /home/akito/.config/backgrounds/Tokyo.jpg --transition-fps 60 --transition-step 255 --transition-type any &

end
