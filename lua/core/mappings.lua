-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--   select_mode = "s"

local opts = {silent = true, noremap = true}
local term_opts = { silent = true }

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local mappings = {
	-- Normal --
	-- Line by line navigation in wrapped text
	{ "n", "j", "gj", opts },
	{ "n", "k", "gk", opts },

	-- Delete buffer by presseing <C-q>
	{ "n", "<leader>q", ":Bdelete<CR>", opts },

	-- Better window navigation
	{ "n", "<C-h>", "<C-w>h", opts },
	{ "n", "<C-j>", "<C-w>j", opts },
	{ "n", "<C-k>", "<C-w>k", opts },
	{ "n", "<C-l>", "<C-w>l", opts },

	-- Nvim tree
	{ "n", "<leader>e", ":NvimTreeToggle <cr>", opts },

	-- Resize with arrows
	{ "n", "<C-Up>", ":resize +2<CR>", opts },
	{ "n", "<C-Down>", ":resize -2<CR>", opts },
	{ "n", "<C-Left>", ":vertical resize -2<CR>", opts },
	{ "n", "<C-Right>", ":vertical resize +2<CR>", opts },

	-- Navigate buffers
	{ "n", "<S-l>", ":bnext<CR>", opts },
	{ "n", "<S-h>", ":bprevious<CR>", opts },

	-- Telescope
	{ 'n', '<leader>ff', "<cmd> Telescope find_files <CR>", opts },
	{ 'n', '<leader>fg', "<cmd> Telescope live_grep <CR>", opts },
	{ 'n', '<leader>fb', "<cmd> Telescope buffers <CR>", opts },
	{ 'n', '<leader>fh', "<cmd> Telescope help_tags <CR>", opts },

	-- Edit config
	{ 'n', '<leader>cc', ":e ~/.config/nvim/init.lua<CR>", opts },

	-- Visual --
	-- Stay in indent mode
	{ "v", "<", "<gv", opts },
	{ "v", ">", ">gv", opts },

	-- Visual Block --
	-- Move text up and down
	{ "x", "J", ":move '>+1<CR>gv-gv", opts },
	{ "x", "K", ":move '<-2<CR>gv-gv", opts },

	-- Terminal --
	-- Better terminal navigation
	{ "t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts },
	{ "t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts },
	{ "t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts },
	{ "t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts },
}

for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping[1], mapping[2], mapping[3], mapping[4])
end
