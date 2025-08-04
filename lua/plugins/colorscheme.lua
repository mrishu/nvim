return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim", lazy = true },
    { "folke/tokyonight.nvim", opts = { style = "night" } },
    { "rebelot/kanagawa.nvim" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
}
