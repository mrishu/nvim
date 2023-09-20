vim.cmd[[command! Cd cd %:p:h]] -- make the active file's directory as current working directory

-- LuaSnipEdit command for editing snippets file for the active filetype
vim.cmd[[command! LuaSnipEdit :lua require("luasnip.loaders").edit_snippet_files()]]
