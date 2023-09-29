alias ls='ls -Al --color=auto'
alias p='ping'
alias untar='tar -zxvf'
alias wget='wget -c'
alias connect="ssh orchid@192.168.1.202"
alias neofetch='hyfetch --ascii-file ~/.config/neofetch/ascii.txt'

alias vim='nvim'
alias vi='nvim'
alias v='nvim'

alias vpn='mullvad'
alias vpn-atl='mullvad relay set location us atl && mullvad reconnect'
alias vpn-rag='mullvad relay set location us rag && mullvad reconnect'

alias hyprcfg="$EDITOR ~/.config/hypr/hyprland.conf"
alias kittycfg="$EDITOR ~/.config/kitty/kitty.conf"
alias dunstcfg="$EDITOR ~/.config/dunst/dunstrc"
alias aliascfg="$EDITOR ~/.config/fish/aliases.fish"
alias bashcfg="$EDITOR ~/.bashrc"

alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pacsize="pacman -qi | egrep '^(name|installed)' | cut -f2 -d':' | paste - - | column -t | sort -nrk 2 | grep mib | less"
alias wineclean="rm -f ~/.local/share/mime/packages/x-wine*; rm -f ~/.local/share/applications/wine-extension*; rm -f ~/.local/share/icons/hicolor/*/*/application-x-wine-extension*; rm -f ~/.local/share/mime/application/x-wine-extension*; echo 'cleaned :D'"

alias password='python3 ~/.local/bin/password-generator.py -c 15'
alias rmshit='python3 ~/.local/bin/rmshit.py'

alias vencord="sh -c '$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)'"

alias ga="git add --all"
alias gcl="git clone"
alias gch="git checkout"
alias gc="git commit -m"
alias gpl="git pull"
alias gps="git push"
