vim.cmd([[
augroup set_filetype
	autocmd!
	autocmd BufRead,BufNewFile *.mmd set filetype=markdown
augroup END

augroup wrap_enable_per_filetype
	autocmd!
	autocmd FileType markdown setlocal wrap
	autocmd FileType tex setlocal wrap
augroup END

augroup cursorline_only_on_active_window
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

augroup high_conceal
	autocmd!
	autocmd BufEnter *.norg setlocal conceallevel=3
augroup END

]])
