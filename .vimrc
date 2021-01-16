"	       _                    
"	__   _(_)_ __ ___  _ __ ___ 
"	\ \ / / | '_ ` _ \| '__/ __|
"	 \ V /| | | | | | | | | (__ 
"	  \_/ |_|_| |_| |_|_|  \___|
" 

syntax on

" plugins
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'dense-analysis/ale'
call plug#end()

" general config
set encoding=utf-8		" show utf-8 symbols
set hlsearch			" highlight all search results
set ignorecase			" do case insensitive search 
set incsearch			" show incremental search results as you type
set smartcase			" case-sensitive search if query contains uppercase
set number				" show current line number
set relativenumber		" show relative line numbers
set tabstop=4

" yep
inoremap jk <ESC>

" air-line
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" nord-vim
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_underline = 1

" set colorscheme
colorscheme nord

