#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Fenix's Raspberry Pi Toolkit version 0.0.1"
TITLE="Fenix's Toolkit"
MENU="Choose one of the following options:"

OPTIONS=(1 "Hyperpixel 4" 2 "Waveshare LCD4C")

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
    echo "You chose Option 1"
    bash ./app-screen-hyperpixel4.sh
    ;;
  2)
    echo "You chose Option 2"
    ;;
esac


