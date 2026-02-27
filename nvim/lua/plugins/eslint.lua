return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            workingDirectory = { mode = "auto" },
            experimental = {
              useFlatConfig = nil,
            },
            nodePath = nil,
            packageManager = "npm",
            validate = "on",
            format = "on",
            rulesCustomizations = {},
            run = "onType",
          },
        },
      },
    },
  },
}
