set nocompatible              " be iMproved, required

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle
call vundle#begin() " let Vundle manage plungs
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
call vundle#end() " end vundle

set number
set ruler
set noswapfile
set nobackup
set backspace=indent,eol,start
set mouse=a
set expandtab
set tabstop=4
set sw=4
set autoindent
set clipboard+=unnamed
set laststatus=2

filetype plugin on
filetype plugin indent on
syntax on


cnoreabbrev B b
cnoreabbrev bb buffers

map <C-n> :NERDTreeToggle %:p:h<CR>
map <C-g> :TagbarToggle<CR>

noremap <F5> : let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
noremap <F10> :!ctags -R --languages=Python --python-kinds=-i .<CR>

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
noremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
noremap <Leader>wf :match<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd FileType java set tags=~/development/.javatags
autocmd FileType python set tags=~/development/.pythontags

command Sudow w !sudo tee % > /dev/null

function! AirlineInit()
let g:airline_section_b = airline#section#create('%{virtualenv#statusline()}')
let g:airline#extensions#virtualenv#enabled = 1
endfunction

autocmd VimEnter * call AirlineInit()

