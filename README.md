# ox3e223c's Toolkit
### Before you get started
```
sudo raspi-config
```
1. setting wifi
2. change hostname
3. open ssh

### Add new user and delete default pi user
```
sudo add user lex
sudo add user lex sudo 
sudo userdel pi
```
### Install softwave
1. install mosh
2. install tmux
3. install vim
4. install vimrc
5. install vim plugin
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### update raspberry
```
sudo apt update && sudo apt upgrade
```

### turn screen backlight ON/OFF Hotkeys
bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/off.sh"'
bind -x '"\e[24~":"/home/lex/Projects/raspi-tools/screen/on.sh"'

### Screen blanking
edit
```
sudo vim /boot/cmdline.txt
```
add
```
consoleblank=60
```

### Install Waveshare LCD (LCD4C) driver
```
git clone https://github.com/waveshare/LCD-show
cd LCD-show
sudo ./LCD4C-show
```
edit config
```
sudo vim /boot/config.txt
```





