#!/bin/bash
sudo pacman -S --noconfirm awww base-devel bat breeze-dark eza fastfetch fd firefox fzf git grim gtk3 hyprland hyprlock hyprpolkitagent kitty nvim papirus-icon-theme power-profiles-daemon ripgrep tmux tree-sitter-cli ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard wofi xdg-desktop-portal-hyprland yazi zoxide zsh zsh-autosuggestions zsh-syntax-highlighting
rm -rf yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
yay -S --noconfirm hyprmod polycat oh-my-posh wlogout
sudo tee /etc/pacman.conf <<EOF
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
cp -rf ~/mocharice/.gtkrc-2.0 ~/
cp -rf ~/mocharice/.tmux.conf ~/
cp -rf ~/mocharice/.zshrc ~/
cp -rf ~/mocharice/.config/omp.toml ~/.config/
cp -rf ~/mocharice/.config/{fastfetch,hypr,kitty,nvim,waybar,wlogout,wofi} ~/.config/
tmux new -ds space
awww img ~/mocharice/wallpapers/plane.jpg
reboot
