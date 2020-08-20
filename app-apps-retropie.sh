#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "1. Check your free disk space"
2 "2. Update and upgrade the existing APT packages"
3 "3. Verify Locale Settings"
4 "4. Install the needed packages for the RetroPie"
5 "5. Install RetroPie"
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
    df -h
    read -n 1 -s -r -p "Press any key to continue"
    bash ./app-apps-retropie.sh
    ;;
  2)
    sudo apt update && sudo apt upgrade
    bash ./app-apps-retropie.sh
    ;;
  3)
    locale
    read -n 1 -s -r -p "Press any key to continue"
    bash ./app-apps-retropie.sh
    ;;
  4)
    sudo apt install git lsb-release
    read -n 1 -s -r -p "Press any key to continue"
    bash ./app-apps-retropie.sh
    ;;
  5)
    cd
    git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
    cd RetroPie-Setup
    chmod +x retropie_setup.sh
    sudo ./retropie_setup.sh
    read -n 1 -s -r -p "Press any key to continue"
    bash ./app-apps-retropie.sh
    ;;
  9)
    bash ./app-apps.sh
    ;;
esac

