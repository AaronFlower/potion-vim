echom 'Autoloading... '
function! potion#running#PotionCompileAndRunFile()
	silent !clear
	execute "!" . g:potion_command . " " . bufname("%")
endfunction


function! potion#running#PotionShowBytecode()
	" Get the bytecode
	let bytecode = system(g:potion_command . " -c -V " . bufname("%"))
	echom bytecode
	
	" Open a new split and set it up.
	let winnr = bufwinnr('__Potion_Bytecode__')
	if winnr == -1
		vsplit __Potion_Bytecode__
	else
		execute "normal! " . winnr . "\<c-w>\<c-w>\<cr>"
	endif

	normal! ggdG
	setlocal filetype=potionbytecode
	setlocal buftype=nofile
	
	" Insert the bytecode.
	call append(0, which_win)
  call append(1, split(bytecode, '\v\n'))
endfunction
