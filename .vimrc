set nocompatible		
" be iMproved, required
filetype off			
" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin on    		
" required

" Loaded plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ack.vim

" Settings/Configuration

" Make sure we set clipboard according to our OS
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed 
  "OSX
else
  set clipboard=unnamedplus 
  "Linux
endif

set path+=**
set wildmenu
set nocompatible wildmenu
set wildmode=full
set wildignorecase
set wildignore=.git
"set wildignore=*.foo,*bar
set tags=./tags,tags;$HOME
" display a line number in front of every line
set number
" always display current filename in status bar
set laststatus=2
" highlight current line
set cursorline
"filetype plugin indent on
" show existing TAB with 4 spaces width
set tabstop=4		
set shiftwidth=4	
" when indenting with `>`, use 4 spaces width
set expandtab		
" on pressing TAB, insert 4 spaces
set history=1000    
" keep 1000 entries of entered commands
set ruler           
" Show the line and column number of the cursor position
set showcmd         
" Show (partial) command in the last line of the screen
set ai
set si

set scrolloff=20 	
set sidescrolloff=30
" keeps a few lines of context around the cursor top/bottom
set hlsearch		
" enable search highlighting
:nohlsearch		
" temporarily disable highlighting for current search (this will not disable it for next searches)
set incsearch		
" display the search match while still typing
set ignorecase          
" return both uppercase and lowercase search results
set smartcase           
" when case was used inside search do not skip ignorecase setting
set autowrite		
" automatically save any changes made to the buffer before it is hidden 
set autoread		
" autmoatically update content in vim if file was changes elsewhere
set lbr                 
" break words
set ai                  
" enable autoindenting
set si                  
" enable smart indentation

" Theme settings
syntax enable			
set nowrap
" enable syntax
"colorscheme monokai
"colorscheme ayu
"colorscheme monokai2
set t_Co=256
set termguicolors
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_contrast_light = 'soft'
"let g:gruvbox_bold = '1'
"let g:gruvbox_italic = '1'
"let g:gruvbox_underline = '1'
"let g:gruvbox_undercurl = '1'
"let g:gruvbox_termcolors = '256'
"let g:gruvbox_hls_cursor = 'orange'
"let g:gruvbox_number_column = 'none'
"let g:gruvbox_sign_column = 'bg1'
"let g:gruvbox_color_column = 'bg0'
"let g:gruvbox_vert_split = 'bg0'
"let g:gruvbox_italicize_comments = '1'
"let g:gruvbox_italicize_strings = '0'
"let g:gruvbox_invert_selection = '1'
"let g:gruvbox_invert_signs ='0'
"let g:gruvbox_invert_indent_guides = '0'
"let g:gruvbox_invert_tabline = '0'
"let g:gruvbox_improved_strings = '0'
"let g:gruvbox_improved_warnings = '0'
"let g:gruvbox_guisp_fallback = 'NONE'

" :set guicursor=i:blinkwait100-blinkon200-blinkoff200
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon10
"set guicursor+=i:blinkwait10

" Vmail starred messages color

" Custom key mapping
let mapleader = ","

" regex completion instead of whole word completion
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *

" map CTRL-B to open buffer list and automatically enter :b[waiting for number input] to easily switch 
" to a different buffer
" CTRL-B
:nmap <C-B> :ls<CR>:silent :vert sb<Space>
":nmap <C-B> :ls<CR>:silent :b<Space>
