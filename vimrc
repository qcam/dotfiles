" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set rtp+=/opt/homebrew/opt/fzf

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
set mouse=a
set complete+=kspell
set completeopt+=popup
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

nmap <leader>h <Plug>(coc-float-hide)

inoremap <silent><expr> <c-@> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

nnoremap <C-T> :Rg<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
