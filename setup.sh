#!/bin/bash
set -e
sudo pacman -S --noconfirm git base-devel pipewire pipewire-pulse wireplumber wiremix hyprland hyprlock hyprpolkitagent xdg-desktop-portal-hyprland sddm kitty zsh zsh-autosuggestions zsh-syntax-highlighting awww waybar wofi power-profiles-daemon nvim yazi fzf fd ripgrep bat zoxide eza tree-sitter-cli fastfetch grim wl-clipboard firefox ttf-jetbrains-mono-nerd
rm -rf yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
yay -S --noconfirm hyprmod polycat wlogout
chsh -s $(which zsh)
cp -rf ~/mocharice/powerlevel10k ~/
cp -rf ~/mocharice/.p10k.zsh ~/
cp -rf ~/mocharice/.zshrc ~/
cp -rf ~/mocharice/.config/{fastfetch,hypr,kitty,nvim,waybar,wlogout,wofi} ~/.config/
awww img ~/mocharice/wallpapers/piano.jpg
reboot
