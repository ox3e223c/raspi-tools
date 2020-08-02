# raspi-tools

# setting wifi
# change hostname
# open ssh

# add user
```
sudo add user lex
sudo add user lex sudo 
```

# install mosh
# install tmux

# install vim
# install vimrc
# install vim plugin
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## update raspberry
```
sudo apt update && sudo apt upgrade
```

## turn screen backlight ON/OFF Hotkeys
bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/off.sh"'
bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/on.sh"'

## Screen blanking
edit
```
sudo vim /boot/cmdline.txt
```
add
```
consoleblank=60
```

## Install Waveshare LCD (LCD4C) driver
```
git clone https://github.com/waveshare/LCD-show
cd LCD-show
sudo ./LCD4C-show
```
edit config
```
sudo vim /boot/config.txt
```





