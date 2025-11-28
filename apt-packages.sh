#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### APT PACKAGES ####"
echo "######################"
echo "######################"
apt update -y

apt install -y tmux man timeshift ansible iptables
apt install -y curl wget net-tools iputils-ping dnsutils telnet traceroute nmap openssh-server
apt install -y sudo git vim build-essential make cmake gcc tree xclip zip unzip rsync openssl
apt install -y libbz2-dev libev-dev libffi-dev libgdbm-dev liblzma-dev libncurses-dev libreadline-dev libsqlite3-dev libssl-dev tk-dev zlib1g-dev
apt install -y htop iftop iotop sysstat glances dstat
apt install -y dmenu feh lightdm xserver-xorg-input-all i3 i3status i3lock xrdp gnome-terminal 
apt install -y jq yq fzf ca-certificates apt-transport-https gnupg lsb-release
apt install -y fonts-liberation fonts-liberation2
