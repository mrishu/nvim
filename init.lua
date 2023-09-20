-- disable netrw at the very start of init.lua for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- bootstrap lazy.nvim
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

-- Load configs
require('core.options')
require('core.user_commands')
require('core.mappings')
require('core.autocmds')

-- Load plugins using lazy.nvim
require('lazy').setup('plugins')

-- Load colorscheme
require('colorschemes')

-- Load plugins
require('conf-plugins.treesitter')
require('conf-plugins.better_escape')
require('conf-plugins.lualine')
require('conf-plugins.luasnip')
require('conf-plugins.cmp')
require('conf-plugins.nvim-autopairs')
require('conf-plugins.nvim-tree')
require('conf-plugins.bufferline')
require('conf-plugins.telescope')
require('conf-plugins.alpha')
require('conf-plugins.oil')
require('conf-plugins.lsp')
require('conf-plugins.neorg')
