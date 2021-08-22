set path+=**

" leader key
let mapleader = ' '  

" plugins
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme gruvbox
" make background transparent
autocmd VimEnter * hi Normal ctermbg=NONE

syntax on

set noswapfile

" set current working directory to file location
set autochdir

" split settings
set splitbelow
set splitright

" mouse enable for vim-qt
set mouse=a

" indentation stuff
set autoindent
set smartindent

" hybrid line numbers
set number relativenumber

set nowrap
set sidescroll=1
set smartcase

" search highlighting
set incsearch
set hlsearch

""" maps and remaps """

" map Ctrl+rr to paste most recent yank in insert/command mode
inoremap <C-R><C-R> <C-R><C-0>
cnoremap <C-R><C-R> <C-R><C-0>

" add newlines without enterint insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Space> <NOP>

" quickly reload vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>

" remap Ctrl+hjkl to window traversal
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap Shift+H, Shift+L to tab traversal (zt and zb basically do the same thing as H
" and L)
nnoremap <S-H> gT
nnoremap <S-L> gt
