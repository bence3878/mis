#!/bin/bash

apt update #> /dev/null
echo -e "\e[31mcsomag lista frisitése\e[39;49m"
apt upgrade -y #> /dev/null
echo -e "\e[31mcsomagok frisitése\e[39;49m"

add-spt-repository -y ppa:remmina-ppa-team/remmina-next #> /dev/null
add-apt-repository -y ppa:lakinduakash/lwh #> /dev/null
echo -e "\e[31mppa tárolók hozzá addása\e[39;49m"

apt update #> /dev/null
echo -e "\e[31mcsomag lista frisitése\e[39;49m"

VALAMI="mc zsh zsh-theme-powerlevel9k git curl gcc g++ clang gdb speedtest-cli remmina remmina-plugin-rdp remmina-plugin-secret gimp openssh-server sl cowsay lolcat w3m w3m-img exa ranger htop btop hexedit tmux numlockx terminator fonts-powerline wine git-cola inxi neofetch uex espanso linux-wifi-hotspot snap linux-wifi-hotspot guake fzf tree gufw"
for i in $VALAMI; do
apt install -y $i #>/dev/null
echo -e "\e[31m"$i "csomag telepitése\e[39;49m"
done
