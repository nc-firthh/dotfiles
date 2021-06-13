u = require('utils')

local nvim_lsp = require('lspconfig')

-- Uncomment individual configs only once corresponding LS is installed

-- -- ElixirLS
-- nvim_lsp.elixirls.setup{
-- 	cmd = { "/Users/henryfirth/.config/lsp/elixir-ls/language_server.sh" };
-- 	on_attach = u.on_attach;
-- 	settings = {
-- 		elixirLS = {};
-- 	};
-- }

-- -- elmls
-- nvim_lsp.elmls.setup{
-- 	on_attach = u.on_attach;
-- }

-- -- tsserver
-- nvim_lsp.tsserver.setup{
-- 	on_attach = u.on_attach;
-- }

-- -- gopls
-- nvim_lsp.gopls.setup{
-- 	on_attach = u.on_attach;
-- }

-- -- rust-analyzer
-- nvim_lsp.rust_analyzer.setup{
-- 	on_attach = u.on_attach;
-- }
