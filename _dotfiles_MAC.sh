mkdir MAC

rsync -av --progress --delete ~/.zshrc ./MAC/.
rsync -av --progress --delete ~/.zsh-aliases ./MAC/.
rsync -av --progress --delete ~/.tmux.conf ./MAC/.
rsync -av --progress --delete ~/.vimrc ./MAC/.
rsync -av --progress --delete ~/docker ./MAC/.
rsync -av --progress --delete ~/.config/sway* ./MAC/.

rm -rf ./MAC/.zsh-aliases/ssh #Remove sensitive data
