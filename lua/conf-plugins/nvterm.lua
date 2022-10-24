require("nvterm").setup()

local terminal = require("nvterm.terminal")

function ft_cmds(ft, path)
	local cmds = {
		python = 'python3 "' .. path .. '"',
	}
	return cmds[ft]
end

local mappings = {
	{ 'n', '<leader>r', function () require("nvterm.terminal").send(ft_cmds(vim.bo.filetype, vim.fn.expand('%'))) end },
	{ {'n', 't'}, '<A-h>', function () require("nvterm.terminal").toggle('horizontal') end },
	{ {'n', 't'}, '<A-v>', function () require("nvterm.terminal").toggle('vertical') end },
	{ {'n', 't'}, '<A-i>', function () require("nvterm.terminal").toggle('float') end },
}

local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
