#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Fenix's Raspberry Pi Toolkit version 0.0.1"
TITLE="Fenix's Toolkit"
MENU="Choose one of the following options:"

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
  1
    mkdir Apps
    git clone https://github.com/waveshare/LCD-show ~/Apps/LCD-show
    #sudo ~/Apps/LCD-show/LCD4C-show
    ;;
  2)
    ### turn screen backlight ON/OFF Hotkeys
    bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/off.sh"'
    bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/on.sh"'
    ;;
esac


