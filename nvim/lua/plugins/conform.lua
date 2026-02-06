return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = { timeout_ms = 10000 },
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
    },
    formatters = {
      prettier = {
        -- Use project-local prettier if available
        command = function(self, ctx)
          -- Try to find local prettier first
          local local_prettier = vim.fn.findfile("node_modules/.bin/prettier", ".;")
          if local_prettier ~= "" then
            return vim.fn.fnamemodify(local_prettier, ":p")
          end
          -- Fall back to global prettier
          return "prettier"
        end,
        -- Don't override any project config
        -- Prettier will automatically look for .prettierrc, prettier.config.js, etc.
      },
    },
  },
}
