return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua.with({
                    filetypes = { "lua", "luau" },
                }),
                null_ls.builtins.formatting.prettierd.with({
                    filetypes = {
                        "javascript",
                        "javascriptreact",
                        "typescript",
                        "typescriptreact",
                        "vue",
                        "css",
                        "scss",
                        "less",
                        "html",
                        "json",
                        "jsonc",
                        "yaml",
                        "markdown",
                        "markdown.mdx",
                        "graphql",
                        "handlebars",
                    },
                }),
                null_ls.builtins.diagnostics.eslint_d.with({
                    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
                }),
            },
        })

        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
    end,
}
