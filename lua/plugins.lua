-- Ensure packer is installed and install it if in case
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Compile Packer when plugins.lua is changed
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use 'kyazdani42/nvim-web-devicons'

	-- cmp plugins and sources
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp" -- lsp completions

	use "onsails/lspkind.nvim" -- icons for cmp completion

	-- LSP
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use "williamboman/mason.nvim" -- simple to use language server installer
	use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

	-- Luasnip
	use "L3MON4D3/LuaSnip"

	-- Latex
	use {
		"lervag/vimtex",
		ft = "tex",
	}
	-- luasnip latex snippets
	use {
		"mrishu/luasnip-latex-snippets.nvim",
		config = function()
			require'luasnip-latex-snippets'.setup()
			-- or setup({ use_treesitter = true })
		end,
		ft = "tex",
	}

	-- Lualine
	use 'nvim-lualine/lualine.nvim'

	-- Bufferline
	use { 'akinsho/bufferline.nvim', tag = "v3.*" }

	use "tiagovla/scope.nvim" -- buffers belong to tabs

	-- Better bdelete and bwipeout (Bdelete and Bwipeout)
	use 'famiu/bufdelete.nvim'

	-- Colorschemes
	use {
		"mcchrish/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		requires = "rktjmp/lush.nvim"
	}
	use "rebelot/kanagawa.nvim"
	use { 'rose-pine/neovim', as = 'rose-pine' }

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	-- Comment.nvim
	use {
		"numToStr/Comment.nvim",
		config = function()
			require('Comment').setup()
		end
	}

	-- Nvim-tree
	use {
		"nvim-tree/nvim-tree.lua",
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- Telescope and plugins
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.x' }
	-- telescope vim.ui.select
	use "nvim-telescope/telescope-ui-select.nvim"
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Indentline
	use "lukas-reineke/indent-blankline.nvim"

	-- better escape
	use "max397574/better-escape.nvim"

	-- impatient, faster startup
	use "lewis6991/impatient.nvim"

	-- nvim-surround
	use ({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})

	-- nvterm
	use "NvChad/nvterm"

	if packer_bootstrap then
		require('packer').sync()
	end
end)
