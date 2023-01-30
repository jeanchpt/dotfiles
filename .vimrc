"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    VIMRC                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PLUGINS

" Install vim-plug if we do not already have it.
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Mappings
Plug 'scrooloose/nerdcommenter'
Plug 'romainl/vim-qf'

" Snippets
Plug 'SirVer/ultisnips'

" Theming
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airlines/vim-airlines'
Plug 'vim-airlines/vim-airlines-themes'

call plug#end()

" Enable filetype detection.
filetype plugin indent on

" Reload a file when it is changed from the outside.
set autoread

" Disable backups.
set nobackup

" Set encoding to UTF-8.
set encoding=utf-8

" Disable swap files.
set noswapfile

" Because vim need the terminal to begin with 'xterm'.
set term=xterm-256color

" USER INTERFACE

" Set backspace behave as expected.
set backspace=eol,indent,start

" Set the minimum amount of visible lines above or under the cursor.
set scrolloff=5

" Display current mode.
set showmode

" Display hybrid line numbers.
set number
set relativenumber

" Always show status line.
set laststatus=2

" Status line format.
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)

" Enhance command line completion.
set wildmenu

" Color the column after textwidth, usually the 80th.
"if version >= 703
"	set colorcolumn=+1
"endif

" Set maximum text width.
set textwidth=79

" Set mouse use.
set mouse=a

" Display cursor line.
set cursorline

" Enable syntax highlighting.
syntax on

" Enable Doxygen highlighting.
let g:load_doxygen_syntax=1

" Set basic indenting (i.e. copy the indentation of the previous line)
" when filetype detection didn't find a fancy indentation scheme.
set autoindent

" Enable line wrapping.
set wrap

" The length of a tab
" This is for documentation purposes only,
" do not change the default value of 8, ever.
set tabstop=8

" The number of spaces inserted/removed when using < or >
set shiftwidth=2

" The number of spaces inserted when you press tab.
" -1 means the same value as shiftwidth
set softtabstop=-1

" Insert spaces instead of tabs
set expandtab

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" MAPPINGS

" Open the quickfix window if there are errors (or close it)
noremap <leader> cw :botright :cw<cr>

" Run make silently
noremap <leader>m :silent! :make! \| :redraw!<cr>
