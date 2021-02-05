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

" mappings
	:nnoremap <SPACE> <Nop>
	:let mapleader = " "

	:nnoremap <leader>p "*p
	:nnoremap <leader>P "*P
	:nnoremap <leader>y "*y
	:nnoremap <leader>d "_d
	
	" replacement
	:nnoremap <leader>r viwpyiw
	:nmap <leader><S-R>  <Plug>ReplaceWithRegisterOperator

	" escape to clear last search highlighting
	:nnoremap <silent> <Esc> :nohlsearch<Esc>

	" one leader for easymotion instead of two
	map <leader> <Plug>(easymotion-prefix)

" settings
	" tabstops and shiftwidth 2 spaces
	:set ts=2 sw=2

	" default case insensitive search
	:set ic

	hi EasyMotionTarget2First ctermbg=none ctermfg=red
	hi EasyMotionTarget2Second ctermbg=none ctermfg=red

" custom text objects

" abbreviations

	iabbrev dgr debugger
	iabbrev apt await this.pauseTest()

" managed in ~/.config/nvim/plugged by default
	call plug#begin()
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-unimpaired'
		Plug 'tpope/vim-repeat'
		Plug 'wellle/targets.vim'
		Plug 'kana/vim-textobj-user'
		Plug 'kana/vim-textobj-indent'
		Plug 'kana/vim-textobj-entire'
		Plug 'inkarkat/vim-ReplaceWithRegister'

		if exists('g:vscode')
			Plug 'asvetliakov/vim-easymotion'
		else 
			Plug 'easymotion/vim-easymotion'
		endif
	call plug#end()