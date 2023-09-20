require('kanagawa').setup({
	dimInactive = true,
	functionStyle = { italic = true },
})

require('onedark').setup({
    style = 'darker',
	toggle_style_key = nil,
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
    code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'italic',
        strings = 'none',
        variables = 'none'
    },
})

-- vim.cmd('colorscheme kanagawa-wave')
vim.cmd('colorscheme kanagawa-dragon')
-- vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme onedark')
