filetype plugin indent on
syntax on

set autoindent smartindent
set autoread
set backspace=indent,eol,start
set cmdheight=2
set colorcolumn=80
set cursorline
set encoding=utf-8
set gdefault
set ignorecase smartcase
set incsearch hlsearch
set laststatus=2
set nobackup
set number
set nocompatible
set noerrorbells
set nofoldenable
set showmode
set noswapfile
set ruler
set scrolloff=5
set shell=bash\ -i
set shortmess+=c
set showmatch
set splitbelow
set splitright
set switchbuf=useopen,usetab
set title
set titlestring='KEGPI'
set clipboard=unnamoed
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

xnoremap p pgvy
function! PasteWithPasteMode()
  if &paste
    normal p
  else
    set paste
    normal p
    set nopaste
  endif
endfunction

let mapleader=","
let localleader='\'
inoremap jj <Esc>


" Plugged
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

Plug 'timcmartin/vim-afterglow'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

let g:afterglow_inherit_background=1
colorscheme afterglow
set background=dark
set t_Co=256

" NERDTree
map <silent> <leader>f :NERDTree<CR>:wincmd l<CR>:NERDTreeFind<CR>
map <leader>dc :NERDTreeTabsClose<CR>
map <leader>do :NERDTree<CR>
nnoremap <silent><C-n> :NERDTreeTabsToggle<CR>
vnoremap <silent><C-n> :NERDTreeTabsToggle<CR>
nnoremap <leader>r :NERDTreeCWD<CR>

" scrooloose/nerdcommenter
nmap \\ <plug>NERDCommenterToggle<CR>
vmap \\ <plug>NERDCommenterToggle<CR>
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'
