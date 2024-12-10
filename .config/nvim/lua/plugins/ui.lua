return {

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      local tokyonight = require("tokyonight")

      tokyonight.setup({
        style = "moon",
      })

      vim.cmd("colorscheme tokyonight")
    end,
  },

  { "tpope/vim-abolish" },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },

  {
    "sphamba/smear-cursor.nvim",
    opts = {
      -- Smear cursor color. Defaults to Cursor GUI color if not set.
      -- Set to "none" to match the text color at the target cursor position.
      cursor_color = "#d3cdc3",

      -- Background color. Defaults to Normal GUI background color if not set.
      normal_bg = "#282828",

      -- Smear cursor when switching buffers or windows.
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines.
      smear_between_neighbor_lines = true,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears will blend better on all backgrounds.
      legacy_computing_symbols_support = false,
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "tokyonight",
        globalstatus = false,
      },
    },
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({

        theme = "doom",
        config = {
          header = {
            "",
            "",
            "",
            "",
            "",
            "",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            " ⠀⠀⠀⠀⠀⡀⣄⠀⠀⢿⣿⣿⣔⣗⣞⣻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⣠⣿⡪⠁⣣⠀⢸⣿⣿⣿⣿⡟⢿⣇⣀⣀⡀⡠⠐⠒⢦⠀⠀⠀⠀⠀",
            "⠀⠀⠀⣰⣿⣿⣷⣀⣄⣷⣿⣿⡿⠿⠿⠾⢽⡿⠛⠛⢫⣇⡁⠤⠘⣿⣶⣄⠀⠀",
            "⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢡⠀⠀⠀⠙⣆⢒⣡⣿⣿⣿⣷⣄",
            "⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡀⠀⢀⣠⠴⠚⢁⠒⠦⣤⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⠁⠐⠊⠉⠍⠂⠘⣿⣿⣿⣿⣿⣿⣿⣿",
            "⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢀⡠⠤⠶⠤⠀⣿⠻⢿⣿⣿⣿⣿⠃",
            "⠈⠻⣿⣿⣿⣿⣿⣿⡿⠻⣿⣿⣿⣿⡇⠀⠀⠀⠀⠘⠀⠀⡇⠀⠀⠀⠈⠉⠁⠀",
            "⠀⠀⠈⠛⠿⣿⡿⠋⠀⠀⠀⠙⣿⣿⣧⠀⠢⠶⠖⠟⠦⠄⡇⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣦⣀⠀⢀⣄⢀⣰⣧⣀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⡿⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⣻⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⢨⣿⣿⣿⣧⣀⡀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⡠⡴⠿⢿⠿⣿⠇⢄⡀⠀⠀⠀⠀⠀⠀⢺⣿⣛⠟⣉⡉⠫⠶⠦",
            "⠀⠀⠀⠀⠀⠻⠙⢚⡢⢊⣂⠊⠉⠒⠃⠀⠀⠀⠀⠀⠀⠀⠀⠈⢊⠀⠀⠉⠉⠁",
            "",
          },
          shortcuts = {},
          center = {
            {
              icon = " ",
              icon_hl = "Title",
              desc = "File Explorer        ",
              desc_hl = "String",
              key = "se",
              -- keymap = "q",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = ":Neotree current",
            },
            {
              icon = " ",
              icon_hl = "Title",
              desc = "Quit                ",
              desc_hl = "String",
              key = "q",
              -- keymap = "q",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = ":q",
            },
          },
        },
      })
    end,
  },
}
