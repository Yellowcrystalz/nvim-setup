-- Vim Settings

-- Automatically wraps text that extends beyond the screen length
vim.cmd("set wrap")

-- Sets line numbers to be relative
vim.cmd("set relativenumber")

-- Status Bar Configs
vim.cmd("set laststatus=2")
vim.cmd("set showmode")

-- Indenting configs
vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- Escape insert and visual mode with kj 
-- vim.cmd("inoremap kj <Esc>")
-- vim.cmd("vnoremap kj <Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- Leader mapping
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Split panes
vim.keymap.set("n", "<leader>s", ":split<CR>")
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")

-- Moving panes
vim.keymap.set("n", "C-h", ":wincmd h<CR>")
vim.keymap.set("n", "C-j", ":wincmd j<CR>")
vim.keymap.set("n", "C-k", ":wincmd k<CR>")
vim.keymap.set("n", "C-l", ":wincmd l<CR>")


