dotdir='$HOME/.dotfiles'

mkdir -p $HOME/.config
ln -sf $dotdir/.config/bspwm $HOME/.config/bspwm
ln -sf $dotdir/.local $HOME/.local
ln -sf $dotdir/.p10k.zsh $HOME/.p10k.zsh
ln -sf $dotdir/.xinitrc $HOME/.xinitrc
ln -sf $dotdir/.zprofile $HOME/.zprofile
ln -sf $dotdir/.zshrc $HOME/.zshrc
