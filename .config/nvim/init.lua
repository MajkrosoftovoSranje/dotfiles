-- Keymaps
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<esc>", {silent = true})
vim.keymap.set("i", "<C-s>", "<CMD>w<CR>", {silent = true})
vim.keymap.set("n", "<C-s>", "<CMD>w<CR>", {silent = true})
vim.keymap.set("n", "<C-t>", "<CMD>tabnew<CR>", {silent = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", {silent = true})
vim.keymap.set("n", "<leader>q", "<CMD>bd<CR>", {silent = true})
vim.keymap.set("n", "<leader>s", "<CMD>sp<CR>", {silent = true})
vim.keymap.set("n", "<leader>v", "<CMD>vsp<CR>", {silent = true})

-- Editor options
vim.opt.clipboard = { 'unnamed', 'unnamedplus' }
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
--vim.opt.colorcolumn = "120"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- Treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99
-- Orgmode
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'
-- Undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

require("lazy-settings")
require("lazy").setup("plugins")
