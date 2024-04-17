local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- find files
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {}) -- find file by word
vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- open all current buffers(tabs)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}) -- documentation
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {}) -- show all git git branches
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {}) -- show all git git commits
vim.keymap.set("n", "<leader>gs", builtin.git_status, {}) -- show git status
vim.keymap.set("n", "<leader>rf", "<cmd>lua require('telescope').extensions.recent_files.pick()<CR>", {}) -- show recent open files
