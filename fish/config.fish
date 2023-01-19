alias ll="exa -la"
alias tks="tmux kill-session"
alias vpn="sudo openvpn --config dloktev.ovpn"
alias tp="trash-put"

set -g theme_date_format "+%T"
set -gx EDITOR nvim
set -g PATH "$HOME/go/bin:$PATH"
set -g KUBECONFIG "/var/run/kubernetes/admin.kubeconfig"
set -g PATH "/home/dloktev/go/src/k8s.io/kubernetes/third_party/etcd:$PATH"

zoxide init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
