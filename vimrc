set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Look and Feel Plugin
Plugin 'lsdr/monokai'

" My own plugins
Plugin 'vim-scripts/vim-auto-save'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'

" File Browser Plugin
Plugin 'scrooloose/nerdtree'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

" Other Mappings

" Navigation around windows
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" *****************************************
" "     Leader Mappings
" " *****************************************

let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR> 

" reloads $MYVIMRC
map <Leader>r :so $MYVIMRC<cr>
