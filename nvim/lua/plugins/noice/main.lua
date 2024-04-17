-- replace ui for msg, cmdline
return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"mrded/nvim-lsp-notify",
			"rcarriga/nvim-notify",
		},
		config = function()
			local noice = require("noice")
			local notify = require("notify")
			local lsp_notify = require("lsp-notify")

			-- setup
			notify.setup({
				background_colour = "#000",
				timeout = 5000,
			})

			lsp_notify.setup({
				notify = notify,
			})

			noice.setup({
				presets = { lsp_doc_border = true },
				routes = {
					-- dont show no information message
					{
						filter = {
							event = "notify",
							find = "No information available",
						},
						opts = {
							skip = true,
						},
					},
				},
			})
		end,
	},
}
