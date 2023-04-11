[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec ssh-agent startx
#SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
