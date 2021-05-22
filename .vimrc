call plug#begin('~/.vim/plugged')

Plug 'StanAngeloff/php.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Keep 1000 lines of history
set history=1000

" Show the cursor position
set ruler

" Cursor line highlight
set cursorline

" Set tab size
set tabstop=4

" Effective tab while editing
set softtabstop=4

" Tabs are spaces
set expandtab

" Show incomplete commands
set showcmd

" File Find {{{

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

" }}}

" Keep 5 lines when scrolling off
set scrolloff=5

" Search options
set hlsearch
set incsearch
set smartcase

" Turn on line numbering
set number

"Create a backup file
" set backup
" set bex=.backup

set linebreak

" Indentation options
set autoindent
set smartindent

" Turn on syntax highlighting
syntax on

" Filetype detection
filetype indent on

" Change color scheme
set background=dark
colorscheme gruvbox

" air-line
" let g:airline_powerline_fonts = 1
