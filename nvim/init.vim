" autoreload after saving
	if !exists('*ReloadVimrc')
		 fun! ReloadVimrc()
				 let save_cursor = getcurpos()
				 source $MYVIMRC
				 call setpos('.', save_cursor)
		 endfun
	endif
	autocmd! BufWritePost $MYVIMRC call ReloadVimrc()

" VSCode consideration
	if exists('g:vscode')
		" VSCode 
	else
		" hybrid line numbers (current line absolute surrounded by relative) in normal mode
		" and absolute line numbers in insert mode (interferes with VSCode)
		:set number relativenumber
		:augroup numbertoggle
		:  autocmd!
		:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
		:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
		:augroup END
	endif

" general settings
	:nnoremap <SPACE> <Nop>
	:let mapleader = " "

	:nnoremap <leader>c _C

	" set tabstops and shiftwidth 2 spaces
	set ts=2 sw=2

" managed in ~/.config/nvim/plugged by default
	call plug#begin()
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-unimpaired'
	call plug#end()
