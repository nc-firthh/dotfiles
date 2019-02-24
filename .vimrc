syntax on

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set timeoutlen=100
set list
set listchars=
set listchars+=tab:>-
set listchars+=space:·
hi SpecialKey ctermfg=grey guifg=grey70
" Line number customizations
set number
set numberwidth=5
hi LineNr ctermfg=grey

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'

call plug#end()

" lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'srcery_drk',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
