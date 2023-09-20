local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

dashboard.section.buttons.val = {
    dashboard.button( "n", "  New file"     , ":enew <BAR> startinsert <CR>"),
    dashboard.button( "f", "  Find files"   , ":Telescope find_files<CR>"),
    dashboard.button( "r", "  Recent"       , ":Telescope oldfiles<CR>"),
	dashboard.button( "s", "  Find Sessions", ":SessionManager load_session<CR>"),
    dashboard.button( "c", "  Configuration", ":e $MYVIMRC | :cd %:p:h<CR>:NvimTreeOpen<CR>"),
    dashboard.button( "q", "󰗼  Quit Neovim"  , ":qa<CR>"),
}

-- Use fortune to set footer --
-- local handle = io.popen('fortune')
-- local fortune = handle:read("*a")
-- handle:close()
-- dashboard.section.footer.val = fortune

dashboard.section.footer.val = "From each according to his ability, to each according to his needs. ~ Karl Marx"

alpha.setup(dashboard.config)
