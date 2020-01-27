set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'jacoborus/tender'
Plugin 'junegunn/fzf'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'https://github.com/airblade/vim-gitgutter'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" " filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" "                     auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"Airline
set noshowmode
set laststatus=2

"Colors
set t_Co=256
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme tender
let g:airline_theme='tender'
hi visual ctermbg=172 guibg=#d78700 ctermfg=255 guifg=#eeeeee

"disable auto comment
autocmd FileType * setlocal fo-=c fo-=r fo-=o

"Indentation
set smarttab                    "Better tabs
set smartindent                 "Inserts new level of indentation
set autoindent                  "Copy indentation from previous line
set tabstop=2                   "Columns a tab counts for
set softtabstop=4               "Columns a tab inserts in insert mode
set shiftwidth=4                "Columns inserted with the reindent operations
set shiftround                  "Always indent by multiple of shiftwidth
set expandtab                   "Always use spaces instead of tabs
set cindent
set cinoptions=(0

"UI config
set number                      "show line numbers
set showcmd                     "show command in bottom bar
set wildmenu                    "visual autocomplete for command menu
set title
set scrolloff=3
set sidescrolloff=3             "Keep at least 3 lines left/right

"Cursor behaviour
let &t_ti.="\<Esc>[2 q"
let &t_SI.="\<Esc>[5 q"
let &t_EI.="\<Esc>[2 q"
let &t_te.="\<Esc>[2 q"


"Search
set incsearch                   "search as characters are entered
set ignorecase
set smartcase                   "search case insensitive and sens only if Caps

"Various
set history=300
set backup
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
set writebackup

set undodir=~/.vim/undodir
set undofile


set splitbelow

"Keys
let mapleader =","

"Quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i

imap <leader>) ()<ESC>a
imap <leader>] []<ESC>a
imap <leader>} {}<ESC>a
imap <leader>> <><ESC>a

"Enter selects ycm
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]

"Auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

nmap ; :FZF<CR>
nmap ;~ :FZF~<CR>

vmap <F2> !boxes -s 80 <CR>

