#!/bin/bash
set -e
sudo pacman -S --noconfirm git base-devel hyprland hyprlock hyprpolkitagent xdg-desktop-portal-hyprland kitty zsh zsh-autosuggestions zsh-syntax-highlighting awww waybar wofi power-profiles-daemon wiremix nvim yazi fzf fd ripgrep bat zoxide eza tree-sitter-cli fastfetch grim wl-clipboard firefox ttf-jetbrains-mono-nerd
rm -rf yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
yay -S --noconfirm hyprmod polycat wlogout
sudo cat <<EOF >~/.config/hypr/hyprlock.conf
[options]
HoldPkg = pacman glibc
Architecture = auto
ILoveCandy
CheckSpace
ParallelDownloads = 5
DownloadUser = alpm
SigLevel = Required DatabaseOptional
LocalFileSigLevel = Optional
[core]
Include = /etc/pacman.d/mirrorlist
[extra]
Include = /etc/pacman.d/mirrorlist
EOF
chsh -s $(which zsh)
cp -rf ~/mocharice/powerlevel10k ~/
cp -rf ~/mocharice/.p10k.zsh ~/
cp -rf ~/mocharice/.zshrc ~/
cp -rf ~/mocharice/.config/{fastfetch,hypr,kitty,nvim,waybar,wlogout,wofi} ~/.config/
awww img ~/mocharice/wallpapers/plane.jpg
reboot
