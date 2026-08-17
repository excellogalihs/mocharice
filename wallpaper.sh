#!/bin/bash
choice=$(ls ~/mocharice/wallpapers/ | wofi --dmenu --prompt "Wallpaper:")
awww img ~/mocharice/wallpapers/$choice --transition-type random --transition-duration 3
echo "
background {
  path = ~/mocharice/wallpapers/$choice
  blur_size = 3
  blur_passes = 3
}
input-field {
  size = 300, 50
}
" >.config/hypr/hyprlock.conf
