vim.g.indent_blankline_filetype_exclude = {
	"lspinfo",
	"packer",
	"checkhealth",
	"help",
	"man",
	"",
	"NvimTree",
	"tex",
	"alpha",
}

require("indent_blankline").setup {
    show_current_context = true,
	use_treesitter = true,
    show_first_indent_level = true,
    show_trailing_blankline_indent = false,
	char = "▏",
}
