"==========================================================================
"Vundle配置相关
" Vundle 插件安装方法说明
" 在Github上的插件
" Plugin 'tpope/vim-fugitive'
" 在网站http://vim-scripts.org/vim/scripts.html的插件
" Plugin 'L9'
" 非Github的git插件安装方法
" Plugin 'git://git.wincent.com/command-t.git'
" 本地插件安装方法
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"==========================================================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible              " be iMproved, required
filetype off                  " required

"Vundle路径设定
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"==========================================================================
" 插件列表
"==========================================================================
Plugin 'scrooloose/nerdtree'
"Bundle 'matchit.zip'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
"Bundle 'tpope/vim-surround'
"Bundle 'ervandew/supertab'
"Bundle 'msanders/snipmate.vim'
Plugin 'taglist.vim'
"Bundle 'vimwiki'
"Bundle 'colorselector'
"Bundle 'mattn/calendar-vim'
"Bundle 'michaeljsmith/vim-indent-object'
"Bundle 'tpope/vim-ragtag'
"Bundle 'ap/vim-css-color'
"Bundle 'mileszs/ack.vim'
"Bundle 'hallison/vim-markdown'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Raimondi/delimitMate'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'tpope/vim-repeat'
"Bundle 'godlygeek/tabular'
"Bundle 'majutsushi/tagbar'
"Bundle 'Logcat-syntax-highlighter'
"Bundle 'prop.vim'
"Bundle 'javacomplete'
"Bundle 'EasyMotion'
"Bundle 'Shougo/neocomplcache'
"Bundle 'showliu/vbookmark.vim'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

"==========================================================================
"其他配置
"==========================================================================

""配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"当一行文字很长时取消换行
set nowrap

"在状态栏显示正在输入的命令
set showcmd

""设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
"set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on
colorscheme desert

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase

""设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
"set tabstop=4
""设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
"set softtabstop=4
""设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
"set expandtab
"
""设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
"filetype indent on
""允许插件
filetype plugin on
"启动智能补全
"filetype plugin indent on
set autoindent
set ignorecase
set hls is
set hlsearch
set ts=4

highlight Function cterm=bold,underline ctermbg=red ctermfg=green
highlight TabLine term=underline cterm=bold ctermfg=9 ctermbg=4
highlight TabLineSel term=bold cterm=bold ctermbg=Red ctermfg=yellow
highlight Pmenu ctermbg=darkred
highlight PmenuSel ctermbg=red ctermfg=yellow

set ruler
set completeopt=longest,menu
let g:NERDTree_title='NERDTree'  
let g:winManagerWindowLayout='NERDTree|TagList|BufExplorer'
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction  
let g:winManagerWidth=35    "设置左栏的宽度
"let Tlist_Auto_Open=1
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' "设置ctags命令目录
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow =  1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window = 1 "让taglist窗口在右侧显示
"F7 NERDTree 
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>
map <F8> :WMToggle<CR>
imap <F8> <ESC>:WMToggle<CR>
nmap wm :WMToggle<cr>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
" 启用ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|jar|class|png)$',
    \ }
