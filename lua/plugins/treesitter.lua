return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "lua", "rust", "go", "javascript", "html", "java", "kotlin", "sql" },
        highlight = { enable = true },
        indent = { enable = true },
    },
    config = function(_, opts)
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
    end,
}
