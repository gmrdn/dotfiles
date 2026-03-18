return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            typescript = { "prettier", "eslint_d" },
            typescriptreact = { "prettier", "eslint_d" },
            javascript = { "prettier", "eslint_d" },
            javascriptreact = { "prettier", "eslint_d" },
            json = { "prettier" },
            jsonc = { "prettier" },
        },
        formatters = {
            prettier = {
                env = {
                    cwd = function(bufnr)
                        return vim.fs.root(bufnr, { "prettier.config.cjs", "package.json" }) or vim.loop.cwd()
                    end,
                },
            },
        },
    },
}
