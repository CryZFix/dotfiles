# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

function myc() {
  cp $1 $1.back
  autopep8 --in-place --aggressive --aggressive $1}


source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# always rehash
zstyle ':completion:*' rehash true

# list
alias ssh='TERM=xterm-256color ssh'
alias fastfetch='fastfetch --load-config paleofetch'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
alias vim='nvim'
alias mount='sudo mount -o users,uid=1000,gid=1000'
alias mpv3='mpv --no-video --volume=20 '
alias update='sudo reflector --verbose -l 5 -p https --sort rate --save /etc/pacman.d/mirrorlist && pikaur -Syyu --noconfirm && sudo pacman -Qtdq | sudo pacman -Rns - --noconfirm && sudo rm -dfr ~/.cache && sudo pacman -Sc --noconfirm'
alias reboot='killall remmina;reboot'

export PATH="$HOME/.local/bin":$PATH

# autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

zstyle ':completion:*' menu select
setopt completealiases
autoload -U compinit && compinit

# Processor of unknown commands
source /usr/share/doc/pkgfile/command-not-found.zsh

# auto-format extractor
ex () {
 if [ -f $1 ] ; then
   case $1 in
     *.tar.bz2) tar xvjf $1   ;;
     *.tar.gz)  tar xvzf $1   ;;
     *.tar.xz)  tar xvfJ $1   ;;
     *.bz2)     bunzip2 $1    ;;
     *.rar)     unrar x $1    ;;
     *.gz)      gunzip $1     ;;
     *.tar)     tar xvf $1    ;;
     *.tbz2)    tar xvjf $1   ;;
     *.tgz)     tar xvzf $1   ;;
     *.zip)     unzip $1      ;;
     *.Z)       uncompress $1 ;;
     *.7z)      7z x $1       ;;
     *)         echo "'$1' Cannot be unpacked with >ex<" ;;
   esac
 else
   echo "'$1' Is not a valid file"
 fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
