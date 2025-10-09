-- Colourscheme
return {
    "mhartington/oceanic-next",
    config = function()
        vim.cmd "colorscheme OceanicNext"
    end,
}
-- return {
--     "shaunsingh/solarized.nvim",
--     config = function()
--         vim.o.termguicolors = true
--         vim.o.background = "dark"
--         require("solarized").setup()
--         vim.cmd.colorscheme "solarized"
--     end,
-- }
--return {
--    'maxmx03/solarized.nvim',
--    enabled = true,
--    lazy = false,
--    priority = 1000,
--    ---@type solarized.config
--    opts = {},
--    config = function(_, opts)
--        vim.o.termguicolors = true
--        vim.o.background = 'dark'
--        require('solarized').setup(opts)
--        vim.cmd.colorscheme 'solarized'
--    end,
--}
