#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "Official Raspberry Pi 7″ Touchscreen Display"
2 "Pimoroni Hyperpixel 4"
3 "Waveshare LCD4C"
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
    bash ./app-screen-official-7inch.sh
    ;;
  2)
    bash ./app-screen-hyperpixel4.sh
    ;;
  3)
    bash ./app-screen-waveshare-lcd4c.sh
    ;;
esac


