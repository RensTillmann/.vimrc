" Loaded plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ack.vim

" Loaded plugins through VimPlug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

" Settings/Configuration
set nocp                " 'compatible' is not set
set nocompatible wildmenu
:syntax enable                  " enable syntax
:filetype plugin on             " enable plugins (for netrw)

set path+=**
set wildmenu
set wildmode=full
set wildignorecase
set wildignore=.git
"set wildignore=*.foo,*bar
set tags=./tags,tags;$HOME

set number                      " display a line number in front of every line
set scrolloff=20                " keeps a few lines of context around the cursor top/bottom
set hlsearch                    " enable search highlighting
:nohlsearch                     " temporarily disable highlighting for current search (this will not disable it for next searches)
set incsearch                   " display the search match while still typing
set shiftwidth=4                " set shift amount to 4 spaces
set autowrite                   " automatically save any changes made to the buffer before it is hidden 
set autoread                    " autmoatically update content in vim if file was changes elsewhere

" Theme settings
set t_Co=256
syntax on
set termguicolors
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast = 'soft'
let g:gruvbox_termcolors = '256'

" Custom key mapping
let mapleader = "," 

" regex completion instead of whole word completion
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *

" map CTRL-B to open buffer list and automatically enter :b[waiting for number input] to easily switch 
" to a different buffer
" CTRL-B
:nmap <C-B> :ls<CR>:silent :b<Space>
