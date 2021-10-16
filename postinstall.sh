#!/bin/sh

pacman --noconfirm -Sy git sudo ansible zsh base-devel

groupadd sudo
useradd -m -G wheel sudo -s /bin/zsh undg

echo "%sudo ALL=(ALL) ALL" >> /etc/sudoers

su undg

echo 'Hello undg, do you want me to setup your favorite environment for you?'
read

cd ~

git clone https://github.com/undg/_init
cd _init

wait
ansible-playbook local.yml -K
