source ~/.config/shell/profile
export PATH=/home/anand.dubey/.opencode/bin:$PATH
export CFLAGS='-std=gnu17'
. "$HOME/.cargo/env"

[[ "$(tty)" == /dev/tty1 ]] && Hyprland
