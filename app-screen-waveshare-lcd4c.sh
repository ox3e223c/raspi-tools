#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "Install Waveshare LCD4C Drivers"
2 "Install Waveshare LCD4C ON/OFF switch hotkey"
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
    mkdir Apps
    git clone https://github.com/waveshare/LCD-show ~/Apps/LCD-show
    sudo ~/Apps/LCD-show/LCD4C-show
    ;;
  2)
    ### turn screen backlight ON/OFF Hotkeys
    bind -x '"\e[24~":"/home/lex/Projects/toolkit/screen/waveshare-lcd4c/off.sh"'
    bind -x '"\e[23~":"/home/lex/Projects/toolkit/screen/waveshare-lcd4c/on.sh"'
    ;;
esac


