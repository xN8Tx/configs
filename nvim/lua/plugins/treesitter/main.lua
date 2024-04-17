-- setup code scheme to correct work with lsps(real i dont sure)
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			ensure_installed = { "lua", "javascript", "html", "typescript", "tsx", "yaml", "css" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
