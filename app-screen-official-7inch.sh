#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Fenix's Raspberry Pi Toolkit version 0.0.1"
TITLE="Fenix's Toolkit"
MENU="Choose one of the following options:"

OPTIONS=(
1 "Brightness to 255(max)"
2 "Brightness to 128(half)"
3 "Brightness to 100"
4 "Brightness to 0"
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
    sudo sh -c 'echo "255" > /sys/class/backlight/rpi_backlight/brightness'
    bash ./app-screen-official-7inch.sh
    ;;
  2)
    sudo sh -c 'echo "128" > /sys/class/backlight/rpi_backlight/brightness'
    bash ./app-screen-official-7inch.sh
    ;;
  3)
    sudo sh -c 'echo "100" > /sys/class/backlight/rpi_backlight/brightness'
    bash ./app-screen-official-7inch.sh
    ;;
  4)
    sudo sh -c 'echo "0" > /sys/class/backlight/rpi_backlight/brightness'
    bash ./app-screen-official-7inch.sh
    ;;
esac


