-- telescope to pretty work with files and another
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim", { "smartpde/telescope-recent-files" } },
	coonf = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {},
			extensions = {
				recent_files = {},
			},
		})
	end,
	-- pretty ui for code action
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
