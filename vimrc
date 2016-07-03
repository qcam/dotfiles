set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on

" For ruby block selecting
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

" Code Comment
Plugin 'vim-scripts/tComment'

" Autocomplete
Plugin 'ervandew/supertab'

" Powerline
Plugin 'vim-ariline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git
Plugin 'airblade/vim-gitgutter'

" Polyglot VIM
Plugin 'sheerun/vim-polyglot'

" Adding this line makes slim syntax highlighting work
autocmd BufNewFile,BufRead *.slim set ft=slim
autocmd BufNewFile,BufRead *.coffee set ft=coffee
autocmd BufNewFile,BufRead *.cpp set tabstop=4
autocmd BufNewFile,BufRead *.es6 set ft=javascript
autocmd BufNewFile,BufRead *.rb,*.rake,Gemfile,Gemfile.lock set ft=ruby

" ===================== BEGIN Ruby ======================
" Ruby Plugins
Plugin 'vim-ruby/vim-ruby'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Ruby Block selector with vir, var
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Ruby Lint
Plugin 'ngmy/vim-rubocop'

" Toggle Tagbar with F8
Plugin 'majutsushi/tagbar'
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

" Toggle block style with Ctrl+B
Plugin 'jgdavey/vim-blockle'

" RSpec
Plugin 'thoughtbot/vim-rspec'
" ===================== END Ruby ======================

" Syntastic
Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim' "Ctrl + p to find your file
Plugin 'rking/ag.vim'

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

call vundle#end()            " required

syntax enable
set background=dark

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_module\|tmp',
  \ 'file': '\v\.(zip|exe|so|dll)$',
  \ }

" Never wrap the text
set nowrap
set hlsearch
set incsearch

" Make VIM not to stupidly smart
set formatoptions-=or

" Wild menu
set wildmenu
set wildmode=full

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Auto indentation
set autoindent

" Light Background
set bg=light
set number

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Get rid of 70's technologies
set nobackup
set noswapfile

" Make backspace works like normal
set backspace=indent,eol,start

set clipboard=unnamed

" Navigation around windows
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>

imap <C-L> <C-O>l
imap <C-J> <C-O>j
imap <C-K> <C-O>k
imap <C-h> <C-O>h

" *********************************
"     Leader Mappings
" *********************************
let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR>

" *********************************
" RSPEC VIM MAPPING
" *********************************
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>r :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
" RSpec.vim mappings
autocmd FileType qf setlocal wrap linebreak

" convert ruby hash from :abc => '123' to abc: '123'
map <Leader>h :s/:\([^=,'"]*\) =>/\1:/g"']<CR>
map <Leader>H :%s/:\([^=,'"]*\) =>/\1:/g"']<CR>

" Quit all windows shortcut
map <Leader>x :qa<CR>
map <Leader>X :wqa<CR>
map <Leader>s :w<CR>
map <Leader>q :wq<CR>

map <Leader>d yyp
map <Leader><CR> cit<CR><esc>ko

map <Leader>rq :RuboCop<CR>
map <Leader>ra :Dispatch ruboCop<CR>

" String double quote to single
map <Leader>' cs"'

" Clear highlight
map <Leader>; :noh<CR>

" Match trailing space in file
highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" ============== Spell-checking setup
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Spell-check Markdown files
autocmd FileType markdown setlocal spell

" Spell-check Git messages
autocmd FileType gitcommit setlocal spell

" Set spellfile to location that is guaranteed to exist,
" can be symlinked to Dropbox or kept in Git
" and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell
