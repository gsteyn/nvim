return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local keymap = vim.keymap

        local opts = {}

        opts.desc = "Trouble"
        keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)

        opts.desc = "Trouble - Workspace"
        keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)

        opts.desc = "Trouble - Document"
        keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)

        opts.desc = "Trouble - Quickfix"
        keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)

        opts.desc = "Trouble - Loclist"
        keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
    end,
}
