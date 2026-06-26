# Auto-start Hyprland only on TTY1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec start-hyprland
fi

# GNOME keyring
eval $(gnome-keyring-daemon --start)

# SSH stuff
export SSH_AUTH_SOCK

# Editor
export EDITOR=nvim
