#!/bin/bash

#fixme for multiple platforms
echo "installing software"
pacaur -S xorg-xinit i3-gaps i3blocks i3lock-fancy-git rofi-dmenu maim cmus neovim python-neovim python2-neovim xclip git

echo "installing plug for neovim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing xinitrc"
cp .xinitrc ~/

echo "installing Xresources"
cp .Xresources ~/

echo "installing zsh configs"
cp .zshrc ~/
cp .zshalias ~/

echo "installing neovim configs"
cp .config/nvim/init.vim ~/.config/nvim

echo "installing i3 configs"
cp .config/i3/config ~/.config/i3

echo "installing termite configs"
cp .config/termite/config ~/.config/termite

echo "installing cava configs"
cp .config/cava/config ~/.config/cava

echo "installing wallpaper"
cp wallpaper.jpg ~/Pictures
