-- buffers belong to tabs (scope.nvim plugin)
require("scope").setup()

-- bufferline configuration
require("bufferline").setup {
	options = {
		close_command = "Bdelete! %d",
		middle_mouse_command = "Bdelete! %d",
		right_mouse_command = "nil",
		diagnostics = 'nvim_lsp',
		separator_style = "slant",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				highlight = "Directory",
				separator = true
			},
		},
	},
}
