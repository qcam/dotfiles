" ================================================================
" BEGIN PLUG-INS
" ==================================================
call plug#begin('~/.vim/plugged')

" Theme
Plug 'chriskempson/base16-vim'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'

" Code Comment
Plug 'vim-scripts/tComment'

" Autocomplete
Plug 'ervandew/supertab'

" Airline bar
Plug 'git@github.com:vim-airline/vim-airline.git' | Plug 'git@github.com:vim-airline/vim-airline-themes.git'

" Git
Plug 'airblade/vim-gitgutter'

" Polyglot VIM
Plug 'sheerun/vim-polyglot'

" ===================== BEGIN Ruby ======================
" Ruby Plugs
Plug 'vim-ruby/vim-ruby'
" Snippets
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
" Ruby Block selector with vir, var
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'
" Ruby Lint
Plug 'ngmy/vim-rubocop'
" Toggle Tagbar with F8
Plug 'majutsushi/tagbar'
" Toggle block style with Ctrl+B
Plug 'jgdavey/vim-blockle'
" RSpec
" Plug 'thoughtbot/vim-rspec'
Plug 'janko-m/vim-test'
" ===================== END Ruby ======================

" Syntastic
Plug 'scrooloose/syntastic'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" File Browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'

call plug#end()
" ============================================
" ENG PLUG-INS
" =========================================================

" For ruby block selecting
runtime macros/matchit.vim

" Syntastic Check
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" Set filetypes
autocmd BufNewFile,BufRead *.slim set ft=slim
autocmd BufNewFile,BufRead *.coffee set ft=coffee
autocmd BufNewFile,BufRead *.cpp set tabstop=4
autocmd BufNewFile,BufRead *.es6,*.js set ft=javascript.jsx
autocmd BufNewFile,BufRead *.rb,*.rake,Gemfile set ft=ruby
autocmd BufRead,BufNewFile *.md set ft=markdown

" Powerline settings
let g:airline_powerline_fonts = 1

" NEADTree Settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

" CtrlP Settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_module\|tmp\',
  \ 'file': '\v\.(zip|exe|so|dll)$',
  \ }
" Theme settings
syntax on
set lazyredraw
set termguicolors
set background=dark
colorscheme base16-ocean
set encoding=utf-8 nobomb
set nowrap
set hlsearch
set incsearch
set number
set formatoptions-=or
set wildmode=full
set autoindent
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set expandtab
set nobackup
set noswapfile
set clipboard=unnamed
set spellfile=$HOME/.vim-spell-en.utf-8.add
set complete+=kspell

" *********************************
"     Leader Mappings
" *********************************
let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR>

" *********************************
" TEST MAPPING
" *********************************
nmap <silent> <Leader>r :TestNearest<CR>
nmap <silent> <Leader>t :TestFile<CR>
nmap <silent> <Leader>a :TestSuite<CR>
nmap <silent> <Leader>l :TestLast<CR>
nmap <silent> <Leader>g :TestVisit<CR>
let test#strategy = "dispatch"

" convert ruby hash from :abc => '123' to abc: '123'
nmap <Leader>h :s/:\([^=,'"]*\) =>/\1:/g"']<CR>
nmap <Leader>H :%s/:\([^=,'"]*\) =>/\1:/g"']<CR>

" Match trailing space in file
highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Spell-check Markdown files
autocmd FileType markdown setlocal spell

" Spell-check Git messages
autocmd FileType gitcommit setlocal spell

set t_ut=

