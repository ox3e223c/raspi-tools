
#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
D "Install Docker"
P "Install Portainer ( Docker web ui )"
G "Install gitlab ( git web ui )"
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
  D)
    # install Docker
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER

    pressAnyKey
    bash ./app-apps.sh
    ;;
  P)
    # install Portainer
    docker volume create portainer_data
    docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

    pressAnyKey
    bash ./app-apps.sh
    ;;
  G)
    # install gitlab
    sudo docker run --detach \
      --hostname 192.168.170.107 \
      --publish 7443:443 --publish 7080:80 --publish 7022:22 \
      --name gitlab \
      --restart always \
      --volume $HOME/Apps/gitlab/config:/etc/gitlab \
      --volume $HOME/Apps/gitlab/logs:/var/log/gitlab \
      --volume $HOME/Apps/gitlab/data:/var/opt/gitlab \
      ulm0/gitlab

    pressAnyKey
    bash ./app-apps.sh
    ;;
  E)
    bash ./app-apps.sh
    ;;
esac

