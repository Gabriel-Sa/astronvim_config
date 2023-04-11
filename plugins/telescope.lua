return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      vimgrep_arguments    = {
        "rg",
        "-L",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
      },
      winblend             = 0,
      border               = {},
      borderchars          = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      layout_config        = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.8,
        preview_cutoff = 120,
      },
      file_ignore_patterns = { "node_modules" },
    }
  },
}
