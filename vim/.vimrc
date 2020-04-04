" absolute line numbers
"":set number

" hybrid line numbers (current line absolute surrounded by relative) in normal mode
" and absolute line numbers in insert mode
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" set tabstops and shiftwidth 4 spaces
set ts=4 sw=4
