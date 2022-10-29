-- disable netrw at the very start of your init.lua (strongly advised) (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load packer
require('plugins')
require('impatient') -- for faster startup
--
require('core.options')
require('core.user_commands')
require('core.mappings')
require('core.autocmds')
--
-- -- Load colorscheme
require('colorscheme')

-- Load plugins
require('conf-plugins.better_escape')
require('conf-plugins.lualine')
require('conf-plugins.treesitter')
require('conf-plugins.luasnip')
require('conf-plugins.cmp')
require('conf-plugins.nvim-tree')
require('conf-plugins.bufferline')
require('conf-plugins.indent-blankline')
require('conf-plugins.telescope')
require('conf-plugins.nvterm')
require('conf-plugins.alpha')
require('conf-plugins.neovim_session_manager')
require('conf-plugins.which-key')
