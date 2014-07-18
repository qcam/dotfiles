set nocompatible              " be iMproved, required
filetype off                  " required

" For ruby block selecting
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Look and Feel Plugin
Plugin 'sickill/vim-monokai'

" Plugins
Plugin 'ervandew/supertab' 
Plugin 'vim-scripts/vim-auto-save'
let g:auto_save = 1
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'

" TMUX PLUGINS

Plugin 'tpope/vim-dispatch'
Bundle 'thoughtbot/vim-rspec'
Bundle 'christoomey/vim-tmux-navigator'

let g:rspec_command = "Dispatch rspec {spec}"

" Coding Plugins
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jgdavey/vim-blockle'
Plugin 'vim-scripts/tComment'
Plugin 'scrooloose/syntastic'
Plugin 'parkr/vim-jekyll'

" File Browser Plugin
Plugin 'scrooloose/nerdtree'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

let g:indentLine_color_term = 100 
let g:indentLinerchar = '|'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
" colorscheme monokai

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set autoindent
set bg=light
set number
if $TMUX == ''
  set clipboard=unnamed
endif
" set clipboard=unnamed
" Other Mappings

" Navigation around windows
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-R> <C-W><C-X>
nnoremap <C-R> <C-W><C-X>
nnoremap <C-=> <C-W>|
map + :vertical res +1<CR>
map - :vertical res -1<CR>
" *****************************************
" "     Leader Mappings
" " *****************************************

let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR> 

" reloads $MYVIMRC
map <Leader>r :so $MYVIMRC<cr>

" *********************************
" RSPEC VIM MAPPING
" *********************************
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"

" convert ruby hash from :abc => '123' to abc: '123'
map <Leader>h :%s/:\([^=,'"]*\) =>/\1:/g"']<CR>

" Seed data
map <Leader>z :!rake db:seed
