return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local logo = require("plugins.alpha.assets")

		local currentDate = require("plugins.alpha.date")
		local plugins = require("lazy").stats().count

		-- Header setup
		local header = {
			type = "text",
			val = logo.cutty_cat,
			opts = {
				position = "center",
				hl = "AlphaHeader",
			},
		}

		-- Heading text start
		local heading = {
			type = "text",
			val = "┌─   Today is " .. currentDate .. " ─┐",
			opts = {
				position = "center",
				hl = "AlphaFooter",
			},
		}

		-- Heading text end
		local plugin_count = {
			type = "text",
			val = "└─   " .. plugins .. " plugins in total ─┘",
			opts = {
				position = "center",
				hl = "AlphaFooter",
			},
		}

		-- Button group
		local buttons = {
			type = "group",
			val = {
				dashboard.button("n", "   Open folder", "<cmd>Neotree left<CR>"),
				dashboard.button("f", "󰱼   Find files", "<cmd>Telescope find_files<CR>"),
				dashboard.button(
					"r",
					"   Recent files",
					"<cmd>lua require('telescope').extensions.recent_files.pick()<CR>"
				),
				dashboard.button("c", "   Configuration", "<cmd>edit ~/.config/nvim/init.lua<CR>"),
				dashboard.button("q", "   Quit", "<cmd>qa<CR>"),
			},
			opts = {
				position = "center",
				spacing = 1,
			},
		}

		-- Footer quote text start
		local quote_start = {
			type = "text",
			val = "┌─ A tidy programmer is ─┐",
			opts = {
				position = "center",
				hl = "AlphaFooter",
			},
		}

		-- Footer quote text end
		local quote_end = {
			type = "text",
			val = "└─  a fast programmer.  ─┘",
			opts = {
				position = "center",
				hl = "AlphaFooter",
			},
		}

		-- Foter
		local footer = {
			type = "text",
			val = "- xN8Tx -",
			opts = {
				position = "center",
				hl = "AlphaFooter",
			},
		}

		-- All for one object to comfort
		local section = {
			header = header,
			buttons = buttons,
			plugin_count = plugin_count,
			heading = heading,
			quote_start = quote_start,
			quote_end = quote_end,
			footer = footer,
		}

		-- Setup dashborad layout
		local opts = {
			layout = {
				section.header,
				{ type = "padding", val = 1 },
				section.heading,
				section.plugin_count,
				{ type = "padding", val = 2 },
				section.buttons,
				{ type = "padding", val = 2 },
				section.quote_start,
				section.quote_end,
				{ type = "padding", val = 1 },
				section.footer,
			},
			opts = {
				margin = 5,
			},
		}

		-- Setup dashboard
		alpha.setup(opts)
	end,
}
