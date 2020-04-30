" Check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif



" Actual Plugins
call plug#begin('~/.config/nvim/plugged')

" Tools
Plug 'airblade/vim-gitgutter'

" Syntax
Plug 'elixir-editors/vim-elixir'

" Color Schemes
Plug 'morhetz/gruvbox'

call plug#end()
