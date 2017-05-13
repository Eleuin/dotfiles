#!/bin/bash

#fixme for multiple platforms
echo "installing software"
pacaur -S xorg-xinit i3-gaps i3blocks i3lock-fancy-git rofi-dmenu maim cmus mpv neovim python-neovim python2-neovim xclip git

echo "installing plug for neovim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing xinitrc"
cp .xinitrc ~/

echo "installing Xresources"
if [ ! -d ~/.xres ]; then
    mkdir ~/.xres
fi
cp .Xresources ~/
cp .xres/rofi ~/.xres
cp .xres/URxvt ~/.xres

echo "installing zsh configs"
cp .zshrc ~/
cp .zshalias ~/

echo "installing neovim configs"
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
fi
if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    curl -fLos ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
cp .config/nvim/init.vim ~/.config/nvim

echo "installing i3 configs"
if [ ! -d ~/.config/i3 ]; then
    mkdir ~/.config/i3
fi
cp .config/i3/config ~/.config/i3

echo "installing termite configs"
if [ ! -d ~/.config/termite ]; then
    mkdir ~/.config/termite
fi
cp .config/termite/config ~/.config/termite

echo "installing cava configs"
if [ ! -d ~/.config/cava ]; then
    mkdir ~/.config/cava
fi
cp .config/cava/config ~/.config/cava

echo "installing mpv configs"
if [ ! -d ~/.config/mpv ]; then
    mkdir ~/.config/mpv
fi
cp .config/mpv/mpv.conf ~/.config/mpv

echo "installing wallpaper"
cp wallpaper.jpg ~/Pictures
