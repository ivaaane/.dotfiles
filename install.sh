#!/bin/bash

echo "==> Updating system"
sudo pacman -Syu

echo "==> Installing packages"
cat pacman | yay -S -

echo "==> Cloning configuration files"
mkdir -p ~/.config
cp -r .config/* ~/.config/

echo "==> Installing plugin managers"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "==> Installing local files"
mkdir -p ~/.local
cp -r .local/bin/ ~/.local
cp -r .local/share/ ~/.local

echo "==> Installing fonts"
fc-cache -fv

echo "==> Clearing cache"
yay -Sc

echo "==> Done!"
