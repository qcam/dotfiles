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
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Polyglot VIM
Plug 'sheerun/vim-polyglot'

" Easy Align
Plug 'junegunn/vim-easy-align'

" ===================== BEGIN Ruby ======================
" Snippets
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
" Ruby Block selector with vir, var
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'
" Ruby Lint
Plug 'ngmy/vim-rubocop'
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

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'

call plug#end()
" ============================================
" ENG PLUG-INS
" =========================================================

