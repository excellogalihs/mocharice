#!/bin/bash
sudo pacman -S --noconfirm git
git clone https://github.com/excellogalihs/mocharice
cd mocharice
chmod +x setup.sh
chmod +x wallpaper.sh
./setup.sh
