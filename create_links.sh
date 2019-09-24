#!/bin/bash

dotdir=~/dotfiles

ln -s $dotfir/clang-format ~/.clang-format
ln -s $dotfir/spacemacs ~/.spacemacs
ln -s $dotdir/zshrc ~/.zshrc
ln -s $dotdir/vimrc ~/.vim/vimrc
ln -s $dotdir/Xresources ~/.Xresources
ln -s $dotdir/ranger ~/.config/ranger/rc.conf

#i3 stuff
ln -s $dotdir/i3conf ~/.config/i3/config
ln -s $dotdir/i3statusconf ~/.config/i3status/config
ln -s $dotdir/dunstrc ~/.config/dunst/dunstrc
ln -s $dotdir/roficonf ~/.config/rofi/config
ln -s $dotdir/rofitheme.rasi ~/.config/rofi/rofitheme.rasi


