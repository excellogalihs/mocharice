#!/bin/bash
yay -Qqe | fzf -m --preview 'yay -Qi {}' | xargs -ro yay -Rns --noconfirm
