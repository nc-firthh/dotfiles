-- This packages contains definitions for useful functions that make
-- configuration easier/clearner in init.lua
local utils = {}

-- Paq plugin manager
vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

function utils.plugin(name)
	paq(name)
end

-- Vim configuration
function utils.set_global(option, value)
	vim.api.nvim_set_option(option, value)
end

function utils.set_window(option, value)
	vim.api.nvim_win_set_option(0, option, value)
end

function utils.set_buffer(option, value)
	vim.api.nvim_buf_set_option(0, option, value)
end

function utils.cmd(vim_command)
	vim.cmd(vim_command)
end

function utils.remap(lhs, rhs, mode, options)
	mode = mode or 'n'
	options = options or { noremap = true }

	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return utils
