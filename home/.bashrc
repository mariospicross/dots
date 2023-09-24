# Prompt customization
# PS1='[\u@\h: \w]\$ ' 
PS1='\w \$ '

# Variables
export PATH="$PATH:~/.local/bin"
export XDG_SCREENSHOTS_DIR=~/Pictures/
export LESSHISTFILE=-
export HISTFILE=~/.bash_history
export HISTSIZE=1000000000000000000000000000000000000000000
export RANGER_LOAD_DEFAULT_RC=false
export VISUAL=nano
export EDITOR=nano

# Aliases
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias connect="ssh [UR_SSH_HERE]"
alias neofetch='hyfetch --ascii-file ~/.config/neofetch/ascii.txt'
alias password='python3 ~/.local/bin/password-generator.py -c 15'
alias vencord="sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)""
alias rmshit='python3 ~/.local/bin/rmshit.py'
alias pacsize="pacman -Qi | egrep '^(Name|Installed)' | cut -f2 -d':' | paste - - | column -t | sort -nrk 2 | grep MiB | less"
alias hyprland="Hyprland"
alias hyprcfg="nano ~/.config/hypr/hyprland.conf"
alias kittycfg="nano ~/.config/kitty/kitty.conf"
alias dunstcfg="nano ~/.config/dunst/dunstrc"

neofetch
