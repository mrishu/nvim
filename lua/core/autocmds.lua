vim.cmd([[

augroup new_filetype
	autocmd!
	autocmd BufRead,BufNewFile *.mmd set filetype=markdown
augroup END

augroup wrap_enable
	autocmd!
	autocmd FileType markdown setlocal wrap
	autocmd FileType tex setlocal wrap
augroup END

augroup cursorline_only_on_active
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

augroup session_load
	autocmd!
	autocmd SessionLoadPost * NvimTreeOpen
augroup END

]])
