" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" =================================================
" Color scheme
" =================================================
Plug 'altercation/vim-colors-solarized' " Solarized color color scheme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" =================================================
" IDE
" =================================================
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  " NERD Tree : File navigator
Plug 'jistr/vim-nerdtree-tabs'                           " one nerd tree
Plug 'majutsushi/tagbar'                                 " TagBar : A class outline viewer for Vim
Plug 'bling/vim-airline'                                 " Lean & mean status/tabline for vim that's light as air.
Plug 'ctrlpvim/ctrlp.vim'                                " CtrlP : Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'tpope/vim-fugitive'                                " fugitive : Git plugin for vim
Plug 'ryanoasis/vim-devicons'                            " ryanoasis/vim-devicons

" Typescript
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'


" =================================================
" Control Helper
" =================================================
" Plug 'easymotion/vim-easymotion' " Easy Motion : Vim motions on speed! 
" Plug 'terryma/vim-multiple-cursors' " vim-multiple-cursors : Sublime Text style multiple selections
" Plug 'scrooloose/nerdcommenter' " Vim plugin for intensely orgasmic commenting
" Plug 'tpope/vim-surround' " provides to easily delete, change and add such surroundings in pairs.
" Plug 'tpope/vim-repeat' " repeat
" Plug 'Raimondi/delimitMate' " 符號自動補齊 

" =================================================
" Auto Complete
" =================================================
" YouCompleteMe : fast code completion engine for Vim. 
" Track the engine.
" Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:

" =================================================
" Syntax
" =================================================
" Plug 'scrooloose/syntastic' " Syntastic is a syntax checking plugin for Vim 
" Plug 'othree/html5.vim' " HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
" Plug 'jelera/vim-javascript-syntax' " javascript syntax
" Plug 'ternjs/tern_for_vim' " JavaScript 語法檢查
" Plug 'maksimr/vim-jsbeautify' " javascript 縮排格式化
" Plug 'jamescarr/snipmate-nodejs' " Various snippets for developing node.js from vim
" Plug 'godlygeek/tabular' " 對其文字表格或者語法對齊 :Tabularize /=
" Plug 'nathanaelkane/vim-indent-guides' " 縮排提示線

" Initialize plugin system
call plug#end()

" =====================================================================
" Basic Settings
" =====================================================================
syntax on                      " 顯示語法高亮
set nu                         " 顯示行號
set encoding=utf8              " 文件編碼 
set clipboard=unnamed          " MacVim剪貼簿支援
set mouse=a                    " 支援滑鼠
set wildmode=list:longest,full " 命令列提示

" Tab
set expandtab                  " 使用空白鍵代替Tab換行
set smarttab                   "
set shiftwidth=2               " 操作 << 指令與 >> 指令縮排的字元數
set tabstop=4                  " tab 字元所佔的寬度
set softtabstop=4              " tab 字元實際所佔有的寬度

set directory=$HOME/.vim/swap/ " 設定swap檔案路徑
"set nowrap                     " 不換行顯示
set ignorecase                 " 忽略大小寫
set hidden                     " 允許緩衝區不儲存切換
set hlsearch                   " 搜尋高亮顯示"

" 縮排
set autoindent                 "自動縮排
set smartindent

" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType java set omnifunc=javacomplete#Complete

" =====================================================================
" Plugin - Solarized dark solorschme
" =====================================================================
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set background=dark
"colorscheme solarized
"colorscheme dracula
colorscheme gruvbox

" =====================================================================
" Plugin - airline
" =====================================================================
set laststatus=2 " 開啟 statusline
let g:airline_powerline_fonts = 1

" =====================================================================
" Key Mappings
" =====================================================================

" 設定空白鍵為 Leader 鍵
let mapleader = " "

" 關閉 buffer 但不關掉視窗
noremap <Leader>w :bp<bar>sp<bar>bn<bar>bd<CR>
" 儲存檔案 
noremap <Leader>s :w<CR>
" 退出 vim 
noremap <Leader>q :q!<CR>
" 複製
noremap <Leader>c "*y
" 貼上
noremap <Leader>v "*p

" NERDTree
noremap <Leader>n :NERDTreeToggle<CR>
" TagBar
noremap <Leader>t :TagbarToggle<CR>
" jsBeaufuty
noremap <Leader>f :call JsBeautify()<CR>
" Buffer
noremap <Right> :bnext<CR>
noremap <Left> :bprevious<CR>
inoremap <Right> <ESC>:bnext<CR>
inoremap <Left> <ESC>:bprevious<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 自動換行移動修正
map j gj
map k gk
