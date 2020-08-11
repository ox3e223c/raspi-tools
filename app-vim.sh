#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=10
BACKTITLE="Fenix's Raspberry Pi Toolkit version 0.0.1"
TITLE="Fenix's Toolkit"
MENU="Choose one of the following options:"

OPTIONS=(
1 "Install Vim"
2 "Install Vim Plugin"
3 "Copy Vimrc"
4 "Creating swap folder"
)

CHOICE=$(dialog --clear \
  --backtitle "$BACKTITLE" \
  --title "$TITLE" \
  --menu "$MENU" \
  $HEIGHT $WIDTH $CHOICE_HEIGHT \
  "${OPTIONS[@]}" \
  2>&1 >/dev/tty)

clear
case $CHOICE in
  1)
    # install vim
    sudo apt-get install vim
    ;;
  2)
    # install vim plugin
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ;;
  3)
    # creating swap folder
    mkdir ~/.vim/swap
    ;;
  4)
    # copy vimrc
    cp ./vim/.vimrc ~
    ;;
esac

