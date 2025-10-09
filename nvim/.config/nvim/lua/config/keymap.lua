vim.g.mapleader = ","

-- source nvim config
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")

-- Not sure what this does
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("c", "%%", "<C-R>=expand('%:h').'/'<cr>")

-- Faster Pane Switching
vim.keymap.set({"n"}, "<C-j>", "<c-w>j")
vim.keymap.set({"n"}, "<C-k>", "<c-w>k")
vim.keymap.set({"n"}, "<C-h>", "<c-w>h")
vim.keymap.set({"n"}, "<C-l>", "<c-w>l")

-- GOTO
vim.keymap.set("n", "<leader><leader>", "<C-^>")

-- Quick Escape
vim.keymap.set("i", "jj", "<ESC>")

-- Reformat whole document
vim.keymap.set("n", "g=", "gg=G''")

-- Prevent Ex mode
-- vim.keymap.set("n", "Q", "<Nop>")
