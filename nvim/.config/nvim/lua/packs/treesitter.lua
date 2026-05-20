vim.pack.add({
    {src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main"}
})
--
-- require("nvim-treesitter").setup({
--     ensure_installed = {
--         'bash',
--         'c',
--         'css',
--         'diff',
--         'graphql',
--         'html',
--         'javascript',
--         'typescript',
--         'json',
--         'ruby',
--         'lua',
--         'luadoc',
--         'markdown',
--         'markdown_inline',
--         'query',
--         'vim',
--         'vimdoc'
--     },
--     auto_install = true,
--     highlight = {
--         enable = true,
--         additional_vim_regex_highlighting = {
--             'markdown',
--             'ruby'
--         }
--     },
--     indent = {
--         enable = true,
--         disable = {
--             'ruby'
--         }
--     },
--     fold = {
--         enable = true
--     }
-- })

-- require("treesitter")
local treesitter = require("nvim-treesitter")

local ensure_installed = {
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
}

treesitter.install(ensure_installed)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft)
        if not lang then return
        end
        local ok_add = pcall(vim.treesitter.language.add, lang)
        if not ok_add then return
        end
        pcall(vim.treesitter.start, buf, lang)
    end,
})
