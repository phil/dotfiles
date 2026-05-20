vim.pack.add({
    "https://github.com/rking/ag.vim"
})

vim.keymap.set("n", "g*", "\"ayiw :Ag \"<C-R>a\"<CR>")
vim.keymap.set("v", "g*", "\"ay :Ag \"<C-R>a\"<CR>")
