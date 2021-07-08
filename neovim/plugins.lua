return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Gruvbox baby
	use 'gruvbox-community/gruvbox'

	-- Syntax highlighting
	use 'elixir-editors/vim-elixir'
	use 'pangloss/vim-javascript'
	use 'MaxMEllon/vim-jsx-pretty'
	use 'ElmCast/elm-vim'
	use 'hashivim/vim-terraform'

	-- Telescope and deps
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- Statusline
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}


	-- Ranger
	use 'francoiscabrol/ranger.vim'
	use 'rbgrouleff/bclose.vim'

	-- Language Server Protocol
	-- See lsp.lua for server-specific config
	use 'neovim/nvim-lspconfig'

	-- Autocompletion
	use 'hrsh7th/nvim-compe'
	use 'nvim-lua/completion-nvim'

	-- Snippets
	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'

	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- Tpope goodness
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'

	-- Speedy Stylish GitGutter
	use 'airblade/vim-gitgutter'
end)
