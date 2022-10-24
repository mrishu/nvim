require("nvim-tree").setup({
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	sync_root_with_cwd = true,
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
