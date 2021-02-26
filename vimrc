" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set rtp+=/usr/local/opt/fzf

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(zip|exe|so|dll)$',
    \ }
endif

" NERDTree Settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

" Theme settings
syntax on
filetype plugin on

set lazyredraw
set termguicolors
set background=light
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

command! -nargs=0 Format :call CocAction('format')

" *********************************
"     Leader Mappings
" *********************************
let mapleader = " "
let $FZF_DEFAULT_COMMAND = 'fd --type f'

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR>
nnoremap <C-P> :Files<CR>

nmap <Leader><Leader> <C-^>
nmap <Leader>rr :edit!<CR>
nmap <Leader>w :u<CR>
nmap <Leader>x :wqa!<CR>

nmap <Leader>t :Make %<CR>
nmap <Leader>l :Make --failed<CR>
nmap <Leader>f :Format<CR>

nmap <Leader>x :wqa!<CR>
noremap <Leader>s :w<CR>
