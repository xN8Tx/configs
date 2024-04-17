-- Format keymap
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	local conform = require("conform")

	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
		range = nil,
	}, {
		desc = "Format file or range (in visual mode)",
	})
end)
