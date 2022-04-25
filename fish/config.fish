if status is-interactive
    fish_vi_key_bindings

    export EDITOR=nvim

    set -g theme_color_scheme gruvbox
    set -g theme_date_format "+%H:%M:%S"
	set -g theme_nerd_fonts yes

    if tty | grep -q tty1
        exec sway
    end
end
