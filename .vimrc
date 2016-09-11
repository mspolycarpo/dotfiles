"" vimrc file
"" Author: Amir Elemam <https://github.com/amirelemam>
"" Sao Paulo, Brazil - 25 Jul 2016
"" Source: https://gist.github.com/joegoggins/8482408

"" GLOBAL CONFIGS
set nocompatible	  	" Avoids conflict between system-wide and
					  	" local vimrc files
filetype off		  	" Set file as plain text, initially
set backspace+=indent,eol,start " Allow backspace in insert mode
set langmenu=none     	" Sets the default language as en_US
set history=1000	  	" Store lots of :cmdline history
set showcmd           	" Show incomplete cmds down the bottom
set showmode          	" Show current mode down the bottom
set gcr=a:blinkon0    	" Disable cursor blink
set visualbell        	" No sounds
set autoread          	" Reload files changed outside vim
set relativenumber	  	" Display line numbers relatively to the cursor
						" position
set guifont=Monaco:h22  " Determinates font type and size
set textwidth=79	  	" Set maximum line width to 80 columns
set tabstop=4         	" The width of a TAB is set to 4.
                      	" Still it is a \t. It is just that
                     	" Vim will interpret it to be having
                      	" a width of 4.
set shiftwidth=4      	" Indents will have a width of 4.
set softtabstop=4     	" Sets the number of columns for a TAB.
set expandtab         	" Expand TABs to spaces.
set autoindent			" Auto indents code
set smartindent			" Indentation works smartly
set hidden				" Hide buffer
syntax on 				" Highlights syntax
set complete            " Word completion
set nu                  " Displays line number
"set foldmethod=indent 	" Folding based on indentation
"set noswapfile			" Turn off swap files
"set nobackup			" Turn off backup files
"set nowb				" Turn off auto backup writing
"set spell              " Spell check

"" MAPPING

" Maps Ctrl+S to save file
:inoremap <c-s> <c-o>:w<CR>
:nnoremap <c-s> :w<CR>

" Typos
command WQ wq
command Wq wq
command W w
command Q q

"" PLUGINS
" Commentary
" Surround
" Ctrl-P
" NERDTree
