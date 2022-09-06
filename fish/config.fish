alias ll="exa -la"
alias tks="tmux kill-session"
alias vpn="sudo openvpn --config dloktev.ovpn"

set -g theme_date_format "+%T"
set -gx EDITOR nvim
set -g PATH "$HOME/go/bin:$PATH"

zoxide init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
