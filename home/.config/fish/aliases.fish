alias ls='ls -Al --color=auto'
alias p='ping'
alias untar='tar -zxvf'
alias wget='wget -c'
alias neofetch='hyfetch --ascii-file ~/.config/neofetch/ascii.txt'

alias connect="ssh -t orchid@192.168.1.223"
alias mount-vault="sudo sshfs -o allow_other,default_permissions,idmap=user orchid@192.168.1.223:/mnt/vault/ /mnt/vault/"

alias nvi="nvim"
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

alias vpn='mullvad'
alias vpn-atl='mullvad relay set location us atl && mullvad reconnect'
alias vpn-rag='mullvad relay set location us rag && mullvad reconnect'
alias vpn-mia='mullvad relay set location us mia && mullvad reconnect'
alias vpn-nyc='mullvad relay set location us nyc && mullvad reconnect'
alias vpn-qas='mullvad relay set location us qas && mullvad reconnect'

alias hyprcfg="$EDITOR ~/.config/hypr/hyprland.conf"
alias kittycfg="$EDITOR ~/.config/kitty/kitty.conf"
alias dunstcfg="$EDITOR ~/.config/dunst/dunstrc"
alias aliascfg="$EDITOR ~/.config/fish/aliases.fish"
alias bashcfg="$EDITOR ~/.bashrc"

alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pacsize="expac -H M '%m\t%n' | sort -h"
alias pacclean="sudo pacman -Qtdq | ifne sudo pacman -Rns -"
alias paccleanse="sudo pacman -Qqd | sudo pacman -Rsu -"
alias paccacheclean="paccache -r k1 && yay -Sc --aur"
alias paclog="pacolog"
alias wineclean="rm -f ~/.local/share/mime/packages/x-wine*; rm -f ~/.local/share/applications/wine-extension*; rm -f ~/.local/share/icons/hicolor/*/*/application-x-wine-extension*; rm -f ~/.local/share/mime/application/x-wine-extension*; echo 'cleaned :D'"
alias npmupdate="sudo npm-check -gu"

alias unzipall="~/.local/bin/zipscript"
alias password='python3 ~/.local/bin/password-generator.py -c 15'
alias rmshit='python3 ~/.local/bin/rmshit.py'
alias rmdesktop='sudo python3 /home/orchid/.local/bin/rmdesktop.py'

alias vencord="curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh | sh"

alias ga="git add --all"
alias gcl="git clone"
alias gch="git checkout"
alias gc="git commit -m"
alias gpl="git pull"
alias gpsh="git push"
