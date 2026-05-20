-- "https://github.com/neovim/nvim-lspconfig"

-- Application Languages
vim.lsp.enable("gopls") -- Installed via brew
vim.lsp.enable("lua_ls") -- Installed via brew
vim.lsp.enable('ruby-lsp') -- handled via Project Gems

-- Markup
vim.lsp.enable("marksman") -- Installed via brew

-- Scripting
vim.lsp.enable("bashls") -- Installed via brew

vim.diagnostic.config({ virtual_text = true })
