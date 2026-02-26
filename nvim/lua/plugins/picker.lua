return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
        },
        explorer = {
          hidden = true,
          layout = {
            layout = {
              width = 60,
            },
          },
        },
      },
      formatters = {
        file = {
          filename_first = true, -- display filename before the file path
          --- * left: truncate the beginning of the path
          --- * center: truncate the middle of the path
          --- * right: truncate the end of the path
          ---@type "left"|"center"|"right"
          truncate = "right",
          min_width = 80, -- minimum length of the truncated path
          filename_only = false, -- only show the filename
          icon_width = 2, -- width of the icon (in characters)
          git_status_hl = true, -- use the git status highlight group for the filename
        },
      },
    },
  },
}
