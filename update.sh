#!/bin/bash
sudo pacman -Syu
yay -Syu
sudo pacman -S --noconfirm awww base-devel bat breeze-dark eza fastfetch fd fzf git grim gtk3 hyprland hyprlock hyprpolkitagent kitty nvim papirus-icon-theme power-profiles-daemon ripgrep tmux tree-sitter-cli ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard wofi xdg-desktop-portal-hyprland yazi zoxide zsh zsh-autosuggestions zsh-syntax-highlighting
yay -S --noconfirm hyprmod polycat oh-my-posh wlogout cliamp-bin zen-browser-bin
cp -rf ~/mocharice/Music/ ~/
cp -rf ~/mocharice/.tmux.conf ~/
cp -rf ~/mocharice/.zshrc ~/
cp -rf ~/mocharice/.config/omp.toml ~/.config/
cp -rf ~/mocharice/.config/{fastfetch,gtk-3.0,hypr,kitty,nvim,waybar,wlogout,wofi} ~/.config/
tmux new -ds workspace
command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'
