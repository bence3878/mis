#!/bin/bash

apt update
apt upgrade -y

add-spt-repository -y ppa:remmina-ppa-team/remmina-next

apt update

for i in mc zsh zsh-theme-powerlevel9k git curl gcc g++ clang gdb speedtest-cli remmina remmina-plugin-rdp remmina-plugin-secret gimp openssh-server sl cowsay lolcat w3m w3m-img exa ranger htop btop hexedit tmux numlockx terminator fonts-powerline wine git-cola inxi; do
apt install -y $i
done
