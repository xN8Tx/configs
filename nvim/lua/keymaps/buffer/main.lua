-- Keymaps to BufferLine plugins
--vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>") -- open next tab
--vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>") -- open previous tab
--vim.keymap.set("n", "X", "<cmd>BufferLinePickClose<CR>") -- close tab by pick
--vim.keymap.set("n", "<leader>X", "<cmd>BufferLineCloseOther<CR>") -- close all with no active tab

-- Keymaps to barbar plugins
vim.keymap.set("n", "<Tab>", "<cmd>BufferNext<CR>") -- open next tab
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferPrevious<CR>") -- open previous tab
vim.keymap.set("n", "X", "<cmd>BufferClose<CR>") -- close active tab
vim.keymap.set("n", "<leader>X", "<cmd>BufferCloseAllButCurrent<CR>") -- close all with no active tab
