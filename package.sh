#!/bin/bash
yay -Slq | fzf -m --preview 'yay -Si {}' | xargs -ro yay -S --noconfirm
