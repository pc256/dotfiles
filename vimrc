set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard+=unnamed
syntax on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

set number
set ruler
set noswapfile
set nobackup
set autoindent
set expandtab
set backspace=indent,eol,start
set mouse=a
set laststatus=2
set tabstop=4
set sw=4
set clipboard=unnamed
syntax on

cnoreabbrev B b
cnoreabbrev bb buffers

map <C-n> :NERDTreeToggle %:p:h<CR>
map <C-g> :TagbarToggle<CR>

noremap <F5> : let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
noremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
noremap <Leader>wf :match<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

