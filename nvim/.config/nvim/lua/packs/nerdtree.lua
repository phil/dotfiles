vim.pack.add({
    "https://github.com/preservim/nerdtree"
})

vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<leader>N", vim.cmd.NERDTreeFind)
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeQuitOnOpen = true
vim.g.NERDTreeWinSize = 40
