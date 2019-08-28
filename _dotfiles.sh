rsync -av --progress --delete ~/.zshrc .
rsync -av --progress --delete ~/.zsh-aliases .
rsync -av --progress --delete ~/bin .
rsync -av --progress --delete ~/.tmux.conf .
rsync -av --progress --delete ~/.vimrc .
rsync -av --progress --delete ~/docker .
rsync -av --progress --delete ~/.config/sway* .
rsync -av --progress --delete ~/.config/waybar* .

rm -rf .zsh-aliases/ssh #Remove sensitive data
