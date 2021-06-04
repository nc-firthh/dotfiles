u = require('utils')

local nvim_lsp = require('lspconfig')

-- Uncomment individual configs only once corresponding LS is installed

-- ElixirLS
-- nvim_lsp.elixirls.setup{
-- 	cmd = { "/Users/henryfirth/.config/lsp/elixir-ls/language_server.sh" };
-- 	on_attach = u.on_attach;
-- 	settings = {
-- 		elixirLS = {};
-- 	};
-- }

-- gopls
-- nvim_lsp.gopls.setup{
-- 	cmd = {"gopls", "--remote=auto"};
-- 	on_attach = u.on_attach;
-- 	settings = {
-- 		elixirLS = {};
-- 	};
-- }
