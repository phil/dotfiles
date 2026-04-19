vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter"
})

require("nvim-treesitter").setup({
    ensure_installed = {
        'bash',
        'c',
        'css',
        'diff',
        'graphql',
        'html',
        'javascript',
        'typescript',
        'json',
        'ruby',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc'
    },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = {
            'markdown',
            'ruby'
        }
    },
    indent = {
        enable = true,
        disable = {
            'ruby'
        }
    },
    fold = {
        enable = true
    }
})
