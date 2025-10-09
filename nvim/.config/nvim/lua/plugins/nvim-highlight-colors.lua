return {
    "norcalli/nvim-colorizer.lua",
    config = function()
        require("colorizer").setup()
            -- "*",
            -- css = { rgb_fn = true },
            -- html = { names = false },
            -- sass = { rgb_fn = true },
            -- scss = { rgb_fn = true },
            -- stylus = { rgb_fn = true },
            -- tailwind = { css = true, css_fn = true },
        -- })
    end,
    -- "brenoprata10/nvim-highlight-colors",
    -- config = function()
    --     require("nvim-highlight-colors").setup({
    --         render = "background",
    --         enable_named_colors = true,
    --         enable_tailwind = true,
    --         enable_hex = true,
    --         enable_rgb = true,
    --         enable_hsl = true,
    --         enable_hsla = true,
    --         enable_rgba = true,
    --         enable_hwb = true,
    --         enable_keyword_colors = true,
    --     })
    -- end
}
