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

	:nnoremap <leader>p "*p
	:nnoremap <leader>P "*P
	:nnoremap <leader>d "_d

	" escape to clear last search highlighting
	:nnoremap <silent> <Esc> :nohlsearch<Esc>

	" one leader for easymotion instead of two
	map <Leader> <Plug>(easymotion-prefix)

	" set tabstops and shiftwidth 2 spaces
	:set ts=2 sw=2

	" default case insensitive search
	:set ic

" managed in ~/.config/nvim/plugged by default
	call plug#begin()
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-unimpaired'
		Plug 'tpope/vim-repeat'

		if exists('g:vscode')
			Plug 'asvetliakov/vim-easymotion'
		else 
			Plug 'Lokaltog/vim-easymotion'
		endif
	call plug#end()
