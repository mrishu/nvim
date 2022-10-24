vim.opt.background = dark

--[[
zenwritten	Zero hue and saturation version
neobones 	Inspired by neovim.io
vimbones 	Inspired by vim.org
rosebones 	Inspired by Rosé Pine
forestbones 	Inspired by Everforest
nordbones 	Inspired by Nord
tokyobones 	Inspired by Tokyo Night
seoulbones 	Inspired by Seoul256
duckbones 	Inspired by Spaceduck
zenburned 	Inspired by Zenburn
kanagawabones 	Inspired by Kanagawa
randombones
]]
-- vim.cmd('colorscheme zenbones')

require'kanagawa'.setup({
	dimInactive = true,
})
vim.cmd('colorscheme kanagawa')


-- require('rose-pine').setup({
-- 	bold_vertical_split = true,
-- 	dim_nc_background = true,
-- })
-- vim.cmd('colorscheme rose-pine')
