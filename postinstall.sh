#!/bin/sh

pacman -Suy git sudo ansible zsh

useradd -m -G wheel sudo -s /bin/zsh undg
