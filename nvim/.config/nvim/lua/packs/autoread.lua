vim.pack.add({
    "https://github.com/manuuurino/autoread.nvim"
})

require("autoread").setup({
    -- Check interval in milliseconds
    interval = 500,
    -- Show notifications when files change
    notify_on_change = true,
    -- How to handle cursor position after reload: "preserve", "scroll_down", or "none"
    cursor_behavior = "preserve",
})
