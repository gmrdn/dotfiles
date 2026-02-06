return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          -- Use the workspace TypeScript version
          init_options = {
            preferences = {
              -- This tells tsserver to always prefer the workspace version
              -- over the bundled version
              -- tsserver will look for typescript in node_modules
              disableSuggestions = false,
            },
          },
          -- Explicitly set the typescript server path to use workspace version
          -- This searches up from the current file for node_modules
          on_new_config = function(new_config, new_root_dir)
            -- Try to find local typescript in node_modules
            local lib_path = new_root_dir .. "/node_modules/typescript/lib"
            local tsserver_path = lib_path .. "/tsserver.js"
            
            -- Check if local typescript exists
            if vim.fn.filereadable(tsserver_path) == 1 then
              new_config.cmd = {
                "typescript-language-server",
                "--stdio",
                "--tsserver-path=" .. tsserver_path,
              }
            end
          end,
        },
      },
    },
  },
}
