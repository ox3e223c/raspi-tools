#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "Install Vim"
2 "Install Vim Plugin"
3 "Copy Vimrc"
4 "Creating swap folder"
5 "all Install"
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
    # copy vimrc
    cp ./vim/.vimrc ~
    ;;
  4)
    # creating swap folder
    mkdir ~/.vim/swap
    ;;
  5)
    # install vim
    sudo apt-get install vim
    # install vim plugin
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # copy vimrc
    cp ./vim/.vimrc ~
    # creating swap folder
    mkdir ~/.vim/swap
    ;;
esac

