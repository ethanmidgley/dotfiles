-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<Leader>q", ":q<Return>")

-- increment /decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete a word backwords
keymap.set("n", "dw", "vb_d")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Neotree
keymap.set("n", "se", ":Neotree toggle current<Return>")
keymap.set("n", "fe", ":Neotree focus<Return>")

-- Telescope commands
keymap.set("n", "<Leader>ff", ":Telescope find_files<Return>")
keymap.set("n", "<Leader>fr", ":Telescope oldfiles<Return>")
keymap.set("n", "<Leader>fs", ":Telescope live_grep<Return>")
keymap.set("n", "<Leader>fc", ":Telescope grep_string<Return>")

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
