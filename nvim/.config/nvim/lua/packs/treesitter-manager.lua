vim.pack.add({
    "https://github.com/romus204/tree-sitter-manager.nvim"
})

require("tree-sitter-manager").setup({
    ensure_installed = {
        -- 'bash',
        -- 'c',
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
        -- 'query',
        'vim',
        'vimdoc'
    },
})
