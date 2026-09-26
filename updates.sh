#!/bin/bash
chmod +x setup.sh
chmod +x package.sh
chmod +x remove.sh
chmod +x update.sh
chmod +x updates.sh
chmod +x wallpaper.sh
cp -rf ~/mocharice/.tmux.conf ~/
cp -rf ~/mocharice/.zshrc ~/
cp -rf ~/mocharice/.config/omp.toml ~/.config/
cp -rf ~/mocharice/.config/{fastfetch,hypr,kitty,nvim,waybar,wlogout,wofi} ~/.config/
sudo pacman -S --noconfirm awww base-devel bat breeze-gtk eza fastfetch fd fzf git grim hyprland hyprlock hyprpolkitagent kitty nvim nwg-look papirus-icon-theme power-profiles-daemon ripgrep tmux tree-sitter-cli ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard wofi xdg-desktop-portal-hyprland yazi zoxide zsh zsh-autosuggestions zsh-syntax-highlighting
yay -S --noconfirm polycat wlogout oh-my-posh-bin zen-browser-bin
sudo pacman -Syu --noconfirm
yay -Syu --noconfirm
