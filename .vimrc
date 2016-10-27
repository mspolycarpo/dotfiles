"" vimrc file
"" Author: Amir Elemam <https://github.com/amirelemam>
"" Sao Paulo, Brazil - 25 Jul 2016
"" Source: https://gist.github.com/joegoggins/8482408

" GLOBAL CONFIGS
set nocompatible	  	" Avoids conflict between system-wide and  
					  	" local vimrc files
filetype off		  	" Set file as plain text, initially

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-commentary'   
Plugin 'tpope/vim-surround'     
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

highlight ExtraWhitespace ctermbg=red guibg=red
set backspace+=indent,eol,start " Allow backspace in insert mode  
set langmenu=none     	" Sets the default language as en_US
set history=1000	  	" Store lots of :cmdline history
set showcmd           	" Show incomplete cmds down the bottom
set showmode          	" Show current mode down the bottom
set gcr=a:blinkon0    	" Disable cursor blink
set visualbell        	" No sounds
set columns=80
set tw=80
set fo+=t
set colorcolumn=81
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
set fileformat=unix     " Avoids error in Python files 
set encoding=utf-8      " Defines encoding
"set clipboard=unnamed   " Joins vim's clipboard with system's
set ruler
set bg=dark
"set foldmethod=indent 	" Folding based on indentation
"set noswapfile			" Turn off swap files
"set nobackup			" Turn off backup files
"set nowb				" Turn off auto backup writing
"set spell              " Spell check

"Line on the 80th character of the line
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" Define with checker syntastic will use
let g:syntastic_python_checkers = ['flake8']

"" MAPPING

" Maps Ctrl+S to save file
inoremap <c-s> <c-o>:w<CR>
nnoremap <c-s> :w<CR>
" Maps space to fold/unfold
nnoremap <space> za

" Typos
command WQ wq
command Wq wq
command W w
command Q q

syntax on
colorscheme lucius
