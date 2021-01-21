"	       _                    
"	__   _(_)_ __ ___  _ __ ___ 
"	\ \ / / | '_ ` _ \| '__/ __|
"	 \ V /| | | | | | | | | (__ 
"	  \_/ |_|_| |_| |_|_|  \___|
" 

" ====================================================================
" 						Vim Plug
" ====================================================================

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'dense-analysis/ale'
call plug#end()

" ====================================================================
" 						General Config
" ====================================================================

syntax on
inoremap jk <ESC>

set encoding=utf-8		" show utf-8 symbols
set hlsearch			" highlight all search results
set ignorecase			" do case insensitive search 
set incsearch			" show incremental search results as you type
set smartcase			" case-sensitive search if query contains uppercase
set number				" show current line number
set relativenumber		" show relative line numbers
set cursorline			" highlight cursor
set tabstop=4			" set tab width

" ====================================================================
" 						Airline Config
" ====================================================================

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

" ====================================================================
"	 					Nord Vim Config
" ====================================================================

let g:nord_cursor_line_number_background = 1	" highlight line number
let g:nord_bold_vertical_split_line = 1			" bold split line
let g:nord_italic_comments = 1					" italic comments
let g:nord_italic = 1							" italic markdown
let g:nord_underline = 1						" enable underline

colorscheme nord								" set colorscheme

