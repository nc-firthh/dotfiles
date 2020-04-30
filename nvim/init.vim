scriptencoding utf-8
source ~/.config/nvim/plugins.vim

" ============================================================================ "
" ===                          EDITING OPTIONS                             === "
" ============================================================================ "

" Set indentation to use 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" Set Colorscheme
colorscheme gruvbox

" Show whitespace characters
set list listchars=trail:·

" Make background transparent
hi! Normal guibg=NONE ctermbg=NONE
hi! NonText guibg=NONE ctermbg=NONE guifg=NONE ctermbg=NONE

" Highlight current line
set cursorline
hi CursorLine cterm=none ctermbg=238

" Change color of Visual mode
hi Visual ctermbg=238

" Custom status-line
set statusline=

  " Right-hand side
  set statusline+=\ %M
  set statusline+=\ %y
  set statusline+=\ %r
  set statusline+=\ %F

  " Switch sides
  set statusline+=%=

  " Left-hand side
  set statusline+=\ %c:%l/%L
  set statusline+=\ [%p%%]

" Custom netrw (file explorer) config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4


" ============================================================================ "
" ===                           KEY MAPPINGS                               === "
" ============================================================================ "

" Reload vim config
map <C-s> :source ~/.config/nvim/init.vim<CR>

" Open file explorer
noremap  <C-B> :Vexplore<CR>

" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "



" ============================================================================ "
" ===                               MISC                                   === "
" ============================================================================ "
