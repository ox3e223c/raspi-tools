#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "Install oh my bash"
2 "Install Powerline fonts"
3 "Install mosh"
4 "Install tmux"
5 "Install vim"
9 "上一頁"
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
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
    bash ./app-basic.sh
    ;;
  2)
    sudo apt-get install fonts-powerline
    bash ./app-basic.sh
    ;;
  3)
    sudo apt-get install mosh
    bash ./app-basic.sh
    ;;
  4)
    cp ./vim/.tmux.conf ~
    sudo apt-get install tmux
    bash ./app-basic.sh
    ;;
  5)
    bash ./app-vim.sh
    ;;
  9)
    bash ./app.sh
    ;;
esac


