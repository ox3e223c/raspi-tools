#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
O "Official Raspberry Pi 7″ Touchscreen Display"
P "Pimoroni Hyperpixel 4"
W "Waveshare LCD4C"
E "上一頁"
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
  O)
    bash ./app-screen-official-7inch.sh
    ;;
  P)
    bash ./app-screen-hyperpixel4.sh
    ;;
  W)
    bash ./app-screen-waveshare-lcd4c.sh
    ;;
  E)
    bash ./app.sh
    ;;
esac

