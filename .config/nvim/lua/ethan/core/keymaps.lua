vim.g.mapleader = " "

-- load the helper functions
require("ethan.core.keymap-utils")

-- increment and decrement
nnoremap("+", "<C-a>")
nnoremap("-", "<C-x>")

-- select all
nmap("<Leader>a", "gg<S-v>G")

-- quick leave
nmap("<Leader>q", ":q<Return>")
nmap("<Leader>wq", ":wq<Return>")

-- remove highlighting
nmap("<Leader>rh", ":nohl<Return>")

-- tabs
nmap("te", ":tabedit<Return>")
nmap("tc", ":tabclose<Return>")
nmap("tp", ":tabprev<Return>")
nmap("tn", ":tabnext<Return>")

-- set up windows
-- split windows
nmap("ss", ":split<Return><C-w>w")
nmap("sv", ":vsplit<Return><C-w>w")

-- move windows
map("sh", "<C-w>h")
map("sl", "<C-w>l")
map("sk", "<C-w>k")
map("sj", "<C-w>j")

-- resize windows
map("<Leader>wh", "<C-w><")
map("<Leader>wl", "<C-w>>")
map("<Leader>wk", "<C-w>+")
map("<Leader>wj", "<C-w>-")
map("<Leader>we", "<C-w>=")

-- maximise current window
nmap("<Leader>mg", ":MaximizerToggle<Return>")

-- open file explorer
nmap("<Leader>sf", ":NvimTreeToggle<Return>")

-- telescope
nmap("<Leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<Leader>fs", "<cmd>Telescope live_grep<cr>")
nmap("<Leader>fc", "<cmd>Telescope grep_string<cr>")
nmap("<Leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<Leader>fh", "<cmd>Telescope help_tags<cr>")

-- error lines
nmap("<Leader>sl", "<cmd>Lspsaga show_line_diagnostics<cr>")
