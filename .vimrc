"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    

syntax on
set encoding=UTF-8
set nocompatible
filetype off
" Vundle begin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'lervag/vimtex'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'

" Vundle end
call vundle#end()
filetype plugin indent on

" Line numbers
set number
set relativenumber

" Colorscheme
colorscheme onedark

" Tabs and spaces config
set shiftwidth=4
set tabstop=4
set expandtab
set wrap
set linebreak

" Enhanced searching
set incsearch
set ignorecase
set smartcase
set hlsearch
map <Space> <Leader>
nnoremap <leader><space> :noh<CR>

" Term
nnoremap <leader>t :bel term<CR>

" Mouse
set mouse=a

" Indent
set autoindent
set smartindent

" More convenient movement when lines are wrapped
nnoremap j gj
nnoremap k gk

" Backspace
set backspace=indent,eol,start

" Auto-complete braces
inoremap {<CR> {<CR>}<Esc>ko

" Nerd Tree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Gui
if has('mac') && has('gui_running')
    set macligatures
    set guifont=FiraCodeNerdFontComplete-Retina:h14
endif

" C Template
autocmd BufNewFile  *.c	0r ~/.vim/skeleton.c

" C++ Template
autocmd BufNewFile *.cpp 0r ~/.vim/skeleton.cpp

" Because I type this wrong all the time
:command Q q
