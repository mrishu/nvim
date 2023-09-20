local ls = require("luasnip")
local types = require("luasnip.util.types")

-- Luasnip config {{{
ls.config.setup({
	store_selection_keys = "<Tab>",
	history = true, -- keep around last snippet local to jump back
	update_events = "TextChanged,TextChangedI", -- update changes as you type
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = {{ "" }},
				hl_group = "Visual",
			},
		},
	},
})
--}}}

-- Key Mappings {{{

-- Cycle through choice node choices
vim.keymap.set({ "i", "s" }, "<A-j>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

vim.keymap.set({ "i", "s" }, "<A-k>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end)
-- Other mappings are in cmp.lua
--}}}

-- Load snippets from the snippets directory
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
