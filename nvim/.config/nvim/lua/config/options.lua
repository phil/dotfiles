vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.guicursor = ""
vim.opt.cursorline = true

-- Set spelling, becuase my spelling is pretty rubbish
vim.opt.spell = true

-- Pane management
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Folding options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Start with all folds open
vim.opt.foldlevel = 99
-- zc to close a fold
-- zo to open a fold
-- za to toggle a fold
-- zM to close all folds
-- zR to open all folds
