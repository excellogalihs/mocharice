export EDITOR="nvim"
export NEWT_COLORS="root=white,black"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/omp.toml)"
alias update='sudo pacman -Syu --noconfirm'
alias updateyay='yay -Syu --noconfirm'
alias search='nvim $(fzf --preview="bat --color=always {}")'
alias cd='z'
alias ls='eza --tree --icons --level=1'
alias i='yay -S --noconfirm'
install() {
  yay -Slq | fzf -m --preview 'yay -Si {}' | xargs -ro yay -S --noconfirm
}
push() {
  git add .
  git commit -m "$*"
  git push
}
