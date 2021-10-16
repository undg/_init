#!/bin/sh

pacman -Sy git sudo ansible zsh

useradd -m -G wheel sudo -s /bin/zsh undg

echo "%sudo ALL=(ALL) ALL" >> /etc/sudoers

su undg

cd ~

git clone https://github.com/undg/_init
cd _init

ansible-playbook local.yml -K
