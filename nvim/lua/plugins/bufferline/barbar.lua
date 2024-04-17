return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	version = "^1.7",
	init = function()
		vim.g.barbar_auto_setup = true
	end,
	config = function()
		local barbar = require("barbar")

		barbar.setup({
			-- Offset bufferline when neo-tree open
			sidebar_filetypes = {
				NvimTree = true,
				undotree = {
					text = "undotree",
					align = "center",
				},
				["neo-tree"] = { event = "BufWipeout" },
				Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
			},
			-- Icons style
			icons = {
				separator = { left = "", right = "" },
				separator_at_end = false,
				gitsigns = {
					added = { enabled = true, icon = "+" },
					changed = { enabled = true, icon = "~" },
					deleted = { enabled = true, icon = "-" },
				},
			},
		})
	end,
}
