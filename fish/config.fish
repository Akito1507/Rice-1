if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    fastfetch
    starship init fish | source
end

fish_add_path $HOME/.spicetify
