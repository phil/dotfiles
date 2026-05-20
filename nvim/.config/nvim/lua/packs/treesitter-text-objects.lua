vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
})

require("vim.treesitter").setup({
    textobjects = {
        enable = true,
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner",
            },
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]c"] = "@class.outer",
            },
            -- goto_next_end = {
            --     ["]M"] = "@function.outer",
            --     ["]["] = "@class.outer",
            -- },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[c"] = "@class.outer",
            },
            -- goto_previous_end = {
            --     ["[M"] = "@function.outer",
            --     ["[]"] = "@class.outer",
            -- },
        },
    },
})
