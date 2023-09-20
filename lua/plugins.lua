return {
	-- lsp-zero
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},

	-- other sources for nvim-cmp
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"hrsh7th/cmp-cmdline", -- cmdline completions
	"saadparwaiz1/cmp_luasnip", -- luasnip completions

	-- icons for cmp completion
	"onsails/lspkind.nvim",

	"windwp/nvim-autopairs",

	-- vimtex
	{
		"lervag/vimtex",
		ft = "tex",
	},

	-- luasnip latex snippets (LuaSnip installed in lsp-zero)
	{
		"mrishu/luasnip-latex-snippets.nvim",
		config = function()
			require('luasnip-latex-snippets').setup({ use_treesitter = true })
		end,
		ft = { "tex", "markdown" },
		dependencies = "L3MON4D3/LuaSnip",
	},

	-- statusline
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	-- bufferline
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	-- buffers belong to tabs
	"tiagovla/scope.nvim",

	-- alternative :bdelete and :bwipeout (:Bdelete and :Bwipeout)
	-- they keep the window layout intact
	"famiu/bufdelete.nvim",

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- colorschemes
	'rebelot/kanagawa.nvim',
	'navarasu/onedark.nvim',
	{ 'rose-pine/neovim', name = 'rose-pine' },

	-- commenting
	{
		'numToStr/Comment.nvim',
		opts = {},
		lazy = false,
	},

	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- telescope and plugins
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- native telescope sorter for performance
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	-- better vim.ui.select and vim.ui.input
	'stevearc/dressing.nvim',

	-- better escape
	"max397574/better-escape.nvim",

	-- greeter
	'goolord/alpha-nvim',

	-- undotree
	'mbbill/undotree',

	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		'stevearc/oil.nvim',
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	}

}
