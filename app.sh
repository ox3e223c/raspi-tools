#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "Screen"
2 "Vim"
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
    bash ./app-screen.sh
    ;;
  2)
    bash ./app-vim.sh
    ;;
esac


