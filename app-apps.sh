#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
R "Install RetroPie"
O "Install OctoPrint"
D "Install Docker"
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
  R)
    bash ./app-apps-retropie.sh
    ;;
  O)
    bash ./app-apps-octoprint.sh
    ;;
  D)
    bash ./app-apps-docker.sh
    ;;
  E)
    bash ./app.sh
    ;;
esac

