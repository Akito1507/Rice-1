if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    fastfetch
    starship init fish | source
end

fish_add_path $HOME/.spicetify

if status is-login
    if test -z "$DISPLAY"; and test (tty) = /dev/tty1
        set -gx EDITOR nvim

        exec start-hyprland
    end
end
