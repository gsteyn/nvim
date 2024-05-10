return {
    "tpope/vim-dadbod",
    dependencies = {
        "kristijanhusak/vim-dadbod-ui",
        "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>", { desc = "Open up DB UI" })
    end,
}
