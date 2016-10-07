#!/bin/sh

mkdir ~/.config/bar -p
mkdir ~/.config/bspwm -p
mkdir ~/.config/sxhkd -p

cp bspwm/bspwmrc ~/.config/bspwm/
cp sxhkd/sxhkdrc ~/.config/sxhkd/
cp bar/bar.sh ~/.config/bar/
cp Xresources ~/.config/Xresources
cp vimrc ~/.vimrc
cp compton.conf ~/.config/
