set nocompatible              " be iMproved, required
filetype off                  " required

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

let mapleader=","

" highlight menu colors
hi Pmenu ctermfg=White ctermbg=DarkBlue
hi PmenuSel ctermfg=Red ctermbg=Yellow cterm=bold
hi SpellBad ctermbg=None cterm=underline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'othree/html5.vim'
Plugin 'GutenYe/json5.vim'
Plugin 'chr4/nginx.vim'

Plugin 'mhinz/vim-startify'
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1

let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ ]
autocmd User Startified setlocal buflisted

" CSS Syntax
Plugin 'hail2u/vim-css3-syntax'

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
let g:airline#extensions#tabline#enabled = 0
set t_Co=256

"Plugin 'ternjs/tern_for_vim'
"let g:tern_map_prefix=","
"let g:tern_map_keys=1
"let g:tern_show_argument_hints='on_hold'
"let g:tern_show_signature_in_pum=1
Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'

Plugin 'scrooloose/nerdtree'
"open nerdtree when open vim without any files
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
"map to Ctrl+N
map ,<C-n> :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>
" for vim-startify session manage
let NERdTreeHijackNetrw = 0

"close vim when there is only nerdtree left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Plugin 'suan/vim-instant-markdown'
"let g:instant_markdown_autostart = 0

"vue syntax highlight
Plugin 'posva/vim-vue'
let g:vue_disable_pre_processors=1

"Plugin 'tao12345666333/vim-vue'

"less syntax plugin
Plugin 'groenewege/vim-less'

"vue files support
"au BufNewFile,BufRead *.vue setf html

"pug(jade) syntax highlight
"Plugin 'digitaltoad/vim-pug'

"aftersyntax plugin
"Plugin 'vim-scripts/aftersyntax.vim'

Plugin 'Valloric/YouCompleteMe'
if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_key_list_select_completion = ['<C-l>', '<Down>']

" 多光标
Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<ESC>'


"Plugin 'scrooloose/syntastic'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" Snippets
Plugin 'vim-scripts/snipMate'

" Ctrl+Y,
Plugin 'mattn/emmet-vim'
let g:user_emmet_mode='inv'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-Y>'
autocmd FileType html,css,vue EmmetInstall

" for Dash
"Plugin 'rizzatti/dash.vim'

" git gutter
Plugin 'airblade/vim-gitgutter'

" trailing white spaces
Plugin 'bronson/vim-trailing-whitespace'

" editor config
Plugin 'editorconfig/editorconfig-vim'

" surround
Plugin 'tpope/vim-surround'

" angular
"Plugin 'burnettk/vim-angular'
"let g:angular_find_ignore = ['build/', 'dist/', 'node_modules', 'bower_components']

" comment plugin
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Easy motion
Plugin 'easymotion/vim-easymotion'

" TypeScript support
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/tsuquyomi-vue'
autocmd BufNewFile,BufRead *.vue set filetype=vue

Plugin 'HerringtonDarkholme/yats.vim'
" Autoformat codes
Plugin 'Chiel92/vim-autoformat'

" Start page
"Plugin 'mhinz/vim-startify'
"let g:startify_custom_header = [
            "\ ' +---------------------------+',
            "\ ' |  Think different.         |',
            "\ ' |       Think out of box.   |',
            "\ ' +----------------+----------+',
            "\]

" Undo plugin
Plugin 'sjl/gundo.vim'
nnoremap <Leader>u :GundoToggle<CR>

" Manage session
Plugin 'vim-scripts/sessionman.vim'
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

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
"filetype indent on
"允许插件
"filetype plugin on
""启动自动补全
filetype plugin indent on

" 文件修改之后自动载入。
set autoread

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

" 设置backspace键
set backspace=2

" 设置Ctrl+C复制到剪切板
vmap <c-c> "+y


" 设置当光标与顶部距离为3行时发生滚动
set scrolloff=3

" 设置允许鼠标
set mouse=a

" 自动缩进
set autoindent
set cindent

" 设置折叠
set foldenable
set foldmethod=indent
set foldlevelstart=99

" Map key to toggle opt
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

" Display-altering option toggles
MapToggle <F1> hlsearch
MapToggle <F2> wrap
MapToggle <F3> list

" Behavior-altering option toggles
MapToggle <F10> scrollbind
MapToggle <F11> ignorecase
MapToggle <F4> paste
set pastetoggle=<F4>

" show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫

" smooth scroll
"map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
"map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
"

" preview image with imgcat
:autocmd BufEnter *.bmp,*.jpeg,*.ico,*.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

