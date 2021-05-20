u = require('utils')

-- Enable syntax first so `hi` cmds work
u.cmd('syntax on')

-- Syntax highlighting
u.plugin 'elixir-editors/vim-elixir'

-- Telescope deps and config
u.plugin 'nvim-lua/popup.nvim'
u.plugin 'nvim-lua/plenary.nvim'
u.plugin 'nvim-telescope/telescope.nvim'

u.remap('<C-p>', ':Telescope find_files<cr>')

-- Tpope goodness
u.plugin 'tpope/vim-fugitive'
u.plugin 'tpope/vim-rhubarb'
u.plugin 'tpope/vim-repeat'
u.plugin 'tpope/vim-surround'

-- Gruvbox baby
u.plugin 'gruvbox-community/gruvbox'

u.cmd('colorscheme gruvbox')

-- Relative line numbers
u.set_window('number', true)
u.set_window('relativenumber', true)

u.cmd('hi CursorLineNR ctermbg=NONE')

-- Transparent SignColumn
u.set_window('signcolumn', 'yes')

u.cmd('hi clear SignColumn')
