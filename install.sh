#!/bin/bash

apt update #> /dev/null
echo "csomag lista frisitése"
apt upgrade -y #> /dev/null
echo "csomagok frisitése"

add-spt-repository -y ppa:remmina-ppa-team/remmina-next > /dev/null

apt update #> /dev/null
VALAMI='mc zsh zsh-theme-powerlevel9k git curl gcc g++ clang gdb speedtest-cli remmina remmina-plugin-rdp remmina-plugin-secret gimp openssh-server sl cowsay lolcat w3m w3m-img exa ranger htop btop hexedit tmux numlockx terminator fonts-powerline wine git-cola inxi neofetch'
for i in $VALAMI; do
apt install -y $i >/dev/null
echo $i
#echo "$i csomag telepitése"
done
