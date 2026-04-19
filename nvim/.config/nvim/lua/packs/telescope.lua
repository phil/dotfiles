-- Fuzzy finder for files, buffers, git files, etc.
vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim"
})

require("telescope").setup({
    -- defaults = {
    --     hidden = true
    -- }
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

local builtin = require('telescope.builtin')

-- Files
vim.keymap.set('n', '<leader>t', builtin.find_files, {})

-- Buffers
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

-- Recent Files
-- vim.keymap.set('n', '<leader>m', builtin.recent, {})
vim.keymap.set('n', '<leader>m', builtin.oldfiles, {})
