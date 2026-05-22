require("config/options")
require("config/autocmds")
require("config/keymap")

-- Packs
-- Handled by vim.pack
--
-- Updating:
-- :lua vim.pack.update()
-- write the buffer to perform the update, quit the buffer to cancel
require("packs/ag")
require("packs/autoread")
require("packs/copilot")
require("packs/colourscheme")
require("packs/lsp")
require("packs/nerdtree")
require("packs/nvim-highlight-colors") -- has Deprecation warning
require("packs/telescope")
require("packs/todo-comments")
require("packs/vim-fugitive")
require("packs/vim-gitgutter")
require("packs/vim-multiple-cursors")
require("packs/treesitter")
-- require("packs/treesitter-manager")
--require("packs/treesitter-text-objects")
require("packs/vim-rails")
-- require("packs/vim-rspec")
require("packs/vim-ruby")
require("packs/vim-sneak")
require("packs/vim-surround")
require("packs/vim-tmux-navigator")
