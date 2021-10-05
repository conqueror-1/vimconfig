function! TermWrapper(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = 'vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = 'new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
	exec buffercmd
	if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
	autocmd BufEnter <buffer> startinsert
endfunction

command! -nargs=0 CompileAndRun call TermWrapper(printf('g++ -std=c++11 %s && ./a.out', expand('%')))
command! -nargs=0 CompileAndRunC call TermWrapper(printf('gcc -w -o  %s && ./a.out', expand('%')))
autocmd FileType cpp nnoremap <leader>fw :CompileAndRun<CR>
autocmd FileType cpp nnoremap <leader>fn :!g++ -std=c++11 -o %:r % && open -a Terminal './a.out'<CR>
autocmd FileType c nnoremap <leader>fn :!gcc -w -o %:r % && open -a Terminal './a.out'<CR>
autocmd FileType c nnoremap <leader>fw :CompileAndRunC<CR>

"for python
command! -nargs=0 Interpret call TermWrapper(printf('python3 %s', expand('%') ))
autocmd FileType python nnoremap <leader>fw :Interpret<CR>

