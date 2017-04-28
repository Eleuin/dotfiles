echo "installing software"
pacaur -S xorg-xinit i3-gaps i3blocks  rofi-dmenu ponymix maim cmus

echo "installing xinitrc"
cp .xinitrc ~/

echo "installing Xresources"
cp .Xresources ~/

echo "installing zsh configs"
cp .zshrc ~/
cp .zshalias ~/

echo "installing vim configs"
cp .vimrc ~/

echo "installing i3 configs"
cp .config/i3/config ~/.config/i3

echo "installing termite configs"
cp .config/termite/config ~/.config/termite

echo "installing wallpaper"
cp wallpaper.jpg ~/Pictures
cp wallpaperblur.png ~/Pictures
