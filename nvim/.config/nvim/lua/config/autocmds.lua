-- Enable auto-reload of files when they change on disk

-- In your init.lua or init.vim
vim.o.autoread = true

-- Auto-reload files when they change on disk
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  command = "checktime",
})

-- dfvdvdfbfdbd
--
--
-- fdvfvdfbv
-- fvfdvdfbd
-- -- fvdvdfbvdfsbdsfbfsd

-- dscsdsvssvds

-- Highlight on yank
-- somergrfve
