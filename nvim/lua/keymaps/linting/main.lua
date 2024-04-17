-- Lint keymap
vim.keymap.set("n", "<leader>ll", function()
	local lint = require("lint")
	lint.try_lint()
end, { desc = "Trigger linting for this file" })
