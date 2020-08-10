#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=10
BACKTITLE="Fenix's Raspberry Pi Toolkit version 0.0.1"
TITLE="Fenix's Toolkit"
MENU="Choose one of the following options:"

OPTIONS=(
1 "安裝 Hyperpixel4 HDMI 自動切換"
2 "移除自動切換"
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
    echo "備份檔案"
    #sudo cp /etc/rc.local ./screen/hyperpixel4/backup/etc/rc.local
    #sudo cp /boot/config.txt ./screen/hyperpixel4/backup/boot/config.txt
    echo "安裝功能"

    #sudo cp /boot/config.txt /boot/hyper-config.txt

    #sudo cp /boot/config.txt /boot/hdmi-config.txt
    #sudo cp ./screen/hyperpixel4/boot/hdmi-config.txt /boot/hdmi-config.txt

    #sudo cp ./screen/hyperpixel4/etc/rc.local /etc/rc.local
    ;;
  2)
    echo "還原安裝"

    ;;
esac


