" Load all vim-plug plugins
source ~/dotfiles/plugs.vim

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" For ruby block selecting
runtime macros/matchit.vim

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden --ignore-dir=.git -g "" %s'
  let g:ctrlp_use_caching = 0
  " CtrlP Settings
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(zip|exe|so|dll)$',
    \ }
endif

" Syntastic Check
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "active",
                               \ "passive_filetypes": ["scala"] }

let g:vimrubocop_rubocop_cmd = 'bundle exec rubocop '

" Configure vim-airline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" NERDTree Settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

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

" Powerline settings
let g:airline_powerline_fonts = 1

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
set complete+=kspell
set t_ut= " Disable black blackground in vim
set vb t_vb= " Disable bell
set ruler

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

nmap <Leader><Leader> <C-^>
nmap <Leader>rr :edit!<CR>
nmap <Leader>w :u<CR>
nmap <Leader>x :wqa!<CR>
