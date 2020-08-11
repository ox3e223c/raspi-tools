# Lex' vimrc
## 安裝 
### 安裝最新版本 vim
```
brew install vim
```

### 安裝 .vimrc
```
git clone https://github.com/ox3e223c/vimrc.git
cd ./vimrc
sh install.sh
```

### 安裝 vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 安裝插件
1. 進入 vim
```
vim
```
2. 執行插件安裝 
```
:PlugInstall
```

### 安裝字體
[nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

### 編譯 YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer
```

### 安裝 Tern for Vim
```
cd ~/.vim/bundle/tern_for_vim
npm install
```

### 建立 swap 資料夾
```
cd ~/.vim
mkdir swap
```
## Hotkey
預設空白鍵為 Leader 鍵
```
<Leader>w     關閉 buffer
<Leader>s     儲存檔案 
<Leader>q     退出 vim 
<Leader>c     複製
<Leader>v     貼上

<Leader>n     開啟,關閉 NERDTree
<Leader>t     開啟,關閉 Tagbar
<Leader>f     格式化 JavaScript
<Left>        下一個 Buffer
<Right>       上一個 Buffer

<C-J>         移動到下面的視窗 
<C-K>         移動到上面的視窗 
<C-L>         移動到右邊的視窗 
<C-H>         移動到左邊的視窗 
```
