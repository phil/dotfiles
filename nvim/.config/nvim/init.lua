-- Lazy.vim
-- run :Lazy to install/update plugins

require("lib/markdown-checkbox-toggle")

require("config.lazy")

vim.keymap.set("n", "<leader>m<space>", ":lua require('markdown-checkbox-toggle').toggle()<CR>")
