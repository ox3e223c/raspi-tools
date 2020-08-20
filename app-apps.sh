#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
0 "Install RetroPie"
1 "Install OctoPrint"
2 "上一頁"
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
  0)
    bash ./app-apps-retropie.sh
    ;;
  1)
    bash ./app-apps-octoprint.sh
    ;;
  2)
    bash ./app.sh
    ;;
esac

