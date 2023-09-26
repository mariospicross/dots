# Prompt customization
# PS1='[\u@\h: \w]\$ ' # Sometimes I prefer this more 
PS1='\w \$ '

# Variables
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export XDG_SCREENSHOTS_DIR=~/Pictures/
export LESSHISTFILE=-
export HISTFILE=~/.bash_history
export HISTSIZE=999999999999999999
export RANGER_LOAD_DEFAULT_RC=false
export VISUAL=nvim
export EDITOR=nvim

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
alias hyprcfg="nvim ~/.config/hypr/hyprland.conf"
alias kittycfg="nvim ~/.config/kitty/kitty.conf"
alias dunstcfg="nvim ~/.config/dunst/dunstrc"
alias vim='nvim'
alias wineclean="rm -f ~/.local/share/mime/packages/x-wine*; rm -f ~/.local/share/applications/wine-extension*; rm -f ~/.local/share/icons/hicolor/*/*/application-x-wine-extension*; rm -f ~/.local/share/mime/application/x-wine-extension*; echo 'cleaned :D'"
alias nw='ping archlinux.org'

# Startup
neofetch
