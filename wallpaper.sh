#!/bin/bash
choice=$(ls ~/mocharice/wallpapers/ | wofi --dmenu --prompt "Wallpaper:")
awww img ~/mocharice/wallpapers/$choice --transition-type random --transition-duration 3
tee ~/.config/hypr/hyprlock.conf <<EOF
background {
  path = ~/mocharice/wallpapers/$choice
  blur_size = 3
  blur_passes = 3
}
label {
  text = \$TIME
  font_family = JetBrainsMono Nerd Font
  font_size = 100
  position = 0, 100
  halign = center
  valign = center
}
input-field {
  size = 300, 50
}
EOF
