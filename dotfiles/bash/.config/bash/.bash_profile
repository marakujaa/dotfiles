export EDITOR=helix
export TERMINAL=alacritty

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  Hyprland
fi
