return {
    'vim-test/vim-test',
    dependencies = {
        "tpope/vim-dispatch",
    },
    init = function()
        vim.g["test#strategy"] = "dispatch"

        vim.keymap.set("n", "<leader>s", vim.cmd.TestNearest)
        vim.keymap.set("n", "<leader>S", vim.cmd.TestFile)
        vim.keymap.set("n", "<leader>l", vim.cmd.TestLast)

        vim.g["test#ruby#rspec#executable"] = "devcontainer exec --workspace-folder . rspec"
    end
}
