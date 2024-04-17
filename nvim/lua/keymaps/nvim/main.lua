local opt = { silent = true, noremap = true }

vim.g.mapleader = " "

-- NeoVim
vim.keymap.set({ "i", "v" }, "jj", "<Esc>", opt) -- set normal mode
vim.keymap.set({ "n" }, "<leader>wqa", "<cmd>wqa<CR>", opt) -- save files and quite
vim.keymap.set({ "i", "v", "n" }, "<C-s>", "<cmd>w<CR><Esc>", opt) -- save file
vim.keymap.set({ "n", "v" }, "<C-j>", "<cmd>m+<CR>", opt) -- move current line up
vim.keymap.set({ "n", "v" }, "<C-k>", "<cmd>m-2<CR>", opt) -- move current line down
vim.keymap.set("n", "<leader>a", "<cmd>%normal! ggVG<CR>", opt) -- select all file(have bugs)
