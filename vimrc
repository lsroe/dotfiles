set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
""Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'git://github.com/rakr/vim-two-firewatch'
Plugin 'vim-airline/vim-airline'
Plugin 'jacoborus/tender'
Plugin 'git://github.com/tpope/vim-surround'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
"Plugin 'CSApprox'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"let g:miniBufExplForceSyntaxEnable = 1
set noshowmode

set laststatus=2

"Colors
set t_Co=256
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme tender
let g:tender_airline = 1
let g:airline_theme='tender'
hi visual ctermbg=172 guibg=#d78700 ctermfg=255 guifg=#eeeeee

"remove trailing whitespace
""fun! <SID>StripTrailingWhitespaces()
""  let l = line(".")
""  let c = col(".")
""  %s/\s\+$//e
""  call cursor(l, c)
""endfun
""autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" Remove trailing whitespace
augroup remove_trailing_whitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup end

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disable auto comment

" Indentation
set smarttab                    " Better tabs
set smartindent                 " Inserts new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=2                   " Columns a tab counts for
set softtabstop=4               " Columns a tab inserts in insert mode
set shiftwidth=4                " Columns inserted with the reindent operations
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs
set cindent
set cinoptions=(0

"UI config

set number              " show line numbers
set showcmd             " show command in bottom bar


set wildmenu            " visual autocomplete for command menu
set title

set scrolloff=3
set sidescrolloff=3             " Keep at least 3 lines left/right



"Search
set incsearch           " search as characters are entered
"set hlsearch            " highlight matches
set ignorecase
set smartcase           "search case insensitive and sens only if Caps


"Move
" move vertically by visual line
"nnoremap j gj
"nnoremap k gk

"Various
set history=300
set backup
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
set writebackup

set undodir=~/.vim/undodir
set undofile


set splitbelow

"JAVA
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F8> :cprevious<Return>
map <F10> :cnext<Return>

"Plugin
"Ctrlpzeug
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'

"Keys
let mapleader =","

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

imap <leader>) ()<ESC>a
imap <leader>] []<ESC>a
imap <leader>} {}<ESC>a

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
"nmap{{zz}}

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor(Ctrl to prevent collision with'go' command)
nmap gO O<ESC>j

let &t_ti.="\<Esc>[2 q"
let &t_SI.="\<Esc>[5 q"
let &t_EI.="\<Esc>[2 q"
let &t_te.="\<Esc>[2 q"

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

nmap ; :FZF<CR>
nmap ;~ :FZF~<CR>
""nmap ; :Files<CR>
""nmap <Leader>t :Buffers<CR>
""nmap <Leader>r :Tags<CR>

vmap <F2> !boxes -s 80 <CR>

