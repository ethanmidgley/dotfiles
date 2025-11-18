return {

  {
    "arzg/vim-colors-xcode",
    priority = 1000,
    lazy = false,
    config = function()
      -- vim.cmd("colorscheme xcodedark")
      vim.cmd("colorscheme xcodedarkhc")

      -- Fix the floating window bg color since it is an old theme
      vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
      vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })

      -- Floating bg color for neo-tree
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "Normal" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "Normal" })
      vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { link = "Normal" })
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
        -- theme = "xcodedark",
        globalstatus = false,
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    opts = {
      vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<Return>"),
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
