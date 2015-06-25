set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" 自动补全html标签
Plugin 'docunext/closetag.vim'
let g:closetag_html_style=1

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"状态栏增强展示
"" 新的airline配置
Plugin 'bling/vim-airline'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1


Plugin 'pangloss/vim-javascript'


Plugin 'scrooloose/nerdtree'
"open nerdtree when open vim without any files
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
"map to Ctrl+N
map <C-n> :NERDTreeToggle<CR>

"close vim when there is only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


Plugin 'Valloric/YouCompleteMe'


Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctrl+Y,
Plugin 'mattn/emmet-vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 一个 tab 的宽度是4个space
set tabstop=4
" 自动缩进使用的space数
set shiftwidth=4
" 编辑插入tab时，把tab算作的空格数
set softtabstop=4
" 缩进使用空格
set expandtab

set smartindent
set autoindent
set smarttab
set shiftround

" 开启行数显示 
set nu
" 相对行号
set relativenumber number

syntax on

"检测文件类型
"filetype on
""针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
"filetype plugin on
""启动自动补全
filetype plugin indent on

set autoread          " 文件修改之后自动载入。

" 取消备份。 视情况自己改
set nobackup
" 关闭交换文件
set noswapfile

" 突出显示当前列
"set cursorcolumn
" 突出显示当前行
set cursorline          

"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
""好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=


"显示当前的行号列号：
set ruler
""在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 搜索时智能匹配大小写
set ignorecase
set smartcase

" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn


" 设置Ctrl+C复制到剪切板
vmap <c-c> "+y





