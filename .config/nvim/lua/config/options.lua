vim.g.mapleader = " "

local opt = vim.opt -- save in local variables for ease

-- some cmd stuff
opt.title = true
opt.hlsearch = true
opt.showcmd = true
opt.cmdheight = 1

-- line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- set up tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearence
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = { "start", "eol", "indent" }

-- create global keyboard
opt.clipboard:append("unnamedplus")

opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" })

-- split windows
opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "cursor"

-- disable mouse
opt.mouse = ""

opt.iskeyword:append("-")

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.opt.winborder = "rounded"
