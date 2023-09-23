# Prompt customization
PS1='[\u@\h: \w]\$ ' 

# Variables
export PATH="$PATH:~/.local/bin"
export XDG_SCREENSHOTS_DIR=~/Pictures/
export LESSHISTFILE=-

# Aliases
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias connect="ssh [UR_SSH_HERE]"
alias neofetch='hyfetch'
alias password='python3 ~/.local/bin/password-generator.py -c 15'
alias vencord="sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)""
alias rmshit='python3 ~/.local/bin/rmshit.py'
alias pacsize="LC_ALL=C pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h"
alias hyprland="Hyprland"
alias hyprcfg="nano ~/.config/hypr/hyprland.conf"
alias kittycfg="nano ~/.config/kitty/kitty.conf"
alias dunstcfg="nano ~/.config/dunst/dunstrc"

neofetch
