" ================================================================
" BEGIN PLUG-INS
" ==================================================
call plug#begin('~/.config/nvim/autoload/plug')

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

" Theme settings
set background=dark
colorscheme base16-ocean
set termguicolors

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_module\|tmp',
  \ 'file': '\v\.(zip|exe|so|dll)$',
  \ }

" Never wrap the text
set nowrap
set number
set lazyredraw

" Make VIM not to stupidly smart
set formatoptions-=or

" Wild menu
set wildmode=full

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Get rid of 70's technologies
set nobackup
set noswapfile

set clipboard=unnamed

" *********************************
"     Leader Mappings
" *********************************
let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR>

" *********************************
" TEST MAPPING
" *********************************
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#strategy = "dispatch"

" Set spellfile to location that is guaranteed to exist,
" can be symlinked to Dropbox or kept in Git
" and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell
" =============
