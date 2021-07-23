set nocompatible
filetype off
se nu
set relativenumber

nmap <C-s> : w<CR>
imap <C-s> <ESC>:w<CR>a

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
syntax enable
set hidden
set nohlsearch

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

nnoremap <Tab> :bnext<CR>

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"function! TermWrapper(command) abort
	"if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	"if g:split_term_style ==# 'vertical'
		"let buffercmd = 'vnew'
	"elseif g:split_term_style ==# 'horizontal'
		"let buffercmd = 'new'
	"else
		"echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		"throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	"endif
	"exec buffercmd
	"if exists('g:split_term_resize_cmd')
		"exec g:split_term_resize_cmd
	"endif
	"exec 'term ' . a:command
	"exec 'setlocal nornu nonu'
	"exec 'startinsert'
	"autocmd BufEnter <buffer> startinsert
"endfunction

"command! -nargs=0 CompileAndRun call TermWrapper(printf('g++ -std=c++11 %s && ./a.out', expand('%')))
"autocmd FileType cpp nnoremap <leader>fw :CompileAndRun<CR>
