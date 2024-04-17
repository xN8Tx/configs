-- BOOTSTRAP LAZY
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- START LAZY
local plugins = require("plugins.main")
local opts = {}

require("lazy").setup(plugins, opts)

-- CONFIG
require("config.main")
-- KEYMAPS
require("keymaps.main")
-- COLORSCHEME
require("utils.colorscheme.main").SetColor("catppuccin")
