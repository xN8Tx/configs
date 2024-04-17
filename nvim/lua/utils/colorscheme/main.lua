-- set colorscheme
local colorscheme = {}

-- color: install colorscheme name
function colorscheme.SetColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	-- If u want to disable colorscheme bg uncomment this section
	-- vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
	-- vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return colorscheme
