return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            complete_function_calls = true,
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
              suggest = {
                completeFunctionCalls = true,
                includeCompletionsForModuleExports = true,
                includeCompletionsWithInsertText = true,
              },
              updateImportsOnFileMove = {
                enabled = "always",
              },
              format = {
                insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
              suggest = {
                completeFunctionCalls = true,
              },
              updateImportsOnFileMove = {
                enabled = "always",
              },
              format = {
                insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false,
              },
            },
            vtsls = {
              autoUseWorkspaceTsdk = true,
              experimental = {
                maxInlayHintLength = 30,
              },
            },
          },
        },
        eslint = {
          settings = {
            ["/eslint.config"] = {
              alwaysTryTypes = true,
            },
          },
        },
      },
    },
  },
}
