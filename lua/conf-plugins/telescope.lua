require("telescope").setup {
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			},
		},
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
}

-- Load extensions
require('telescope').load_extension('fzf')
