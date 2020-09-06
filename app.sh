#!/bin/bash

# include global setting
source ./app-global.sh

# install require app
source ./app-require.sh

OPTIONS=(
B "Basic install"
A "Applications"
S "Setup Raspberry Pi Screen"
E "Exit"
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
  B)
    bash ./app-basic.sh
    ;;
  A)
    bash ./app-apps.sh
    ;;
  S)
    bash ./app-screen.sh
    ;;
  E)
    #donothing
    ;;
esac

