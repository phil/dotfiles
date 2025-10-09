-- File Manager
return{
  "preservim/nerdtree",
  config = function()
	  vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
	  vim.keymap.set("n", "<leader>N", vim.cmd.NERDTreeFind)
	  vim.g.NERDTreeQuitOnOpen = true
	  vim.g.NERDTreeWinSize = 40
  end
}
