#!/bin/sh

mkdir ./bar/
mkdir ./bspwm/
mkdir ./sxhkd/

cp ~/.config/bspwm/bspwmrc ./bspwm/
cp ~/.config/sxhkd/sxhkdrc ./sxhkd/
cp ~/.config/bar/bar.sh ./bar/
cp ~/.config/Xresources ./
cp ~/.vimrc ./vimrc
cp ~/.config/compton.conf ./
cp ~/.bash_profile ./bash_profile
cp ~/.bashrc ./bashrc

git status
