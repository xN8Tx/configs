-- catppuccin theme
local catppuccin = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local catppuccin = require("catppuccin")

		catppuccin.setup({
			flavour = "macchiato",
			styles = {
				types = { "italic" },
			},
		})
	end,
}

return catppuccin
