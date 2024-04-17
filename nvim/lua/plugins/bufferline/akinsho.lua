-- classic akinsho/bufferline i dont use with
-- catppuccin colorscheme because web-dev-icons
-- work incorrect
return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			-- configurate appearance
			options = {
				separator_style = "padded_slope",
				-- Show error in tab item
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})
	end,
}
