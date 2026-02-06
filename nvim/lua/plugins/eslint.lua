return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            -- Use workspace folder for finding config
            workingDirectory = { mode = "auto" },
            -- Auto-detect flat config
            experimental = {
              useFlatConfig = nil, -- auto-detect
            },
            -- Use project's node_modules
            nodePath = nil, -- auto-detect from workspace
            packageManager = "npm",
          },
        },
      },
    },
  },
}
