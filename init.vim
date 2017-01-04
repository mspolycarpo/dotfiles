"" Author: Amir Elemam <https://github.com/amirelemam>
"" Sao Paulo, Brazil - 03 Jan 2017
"" Source: https://gist.github.com/joegoggins/8482408

autocmd BufNewFile * :write

"BEGINNING Plugin vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'janko-m/vim-test'
" Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'arakashic/chromatica.nvim'
Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'

call plug#end()

"END vim-plug

set langmenu=none     	" Sets the default language as en_US
set showcmd           	" Show incomplete cmds down the bottom
set gcr=a:blinkon0    	" Disable cursor blink
set visualbell        	" No sounds
set relativenumber	  	" Display line numbers relatively to the cursor position
set nu                  " Displays line number of current line
set guifont=Monaco:h16  " Determinates font type and size
set textwidth=79	  	" Set maximum line width to 80 columns
set tabstop=4         	" The width of a TAB is set to 4.
set shiftwidth=4      	" Indents will have a width of 4.
set softtabstop=4     	" Sets the number of columns for a TAB.
set expandtab         	" Expand TABs to spaces.
set smartindent			" Indentation works smartly
set hidden				" Hide buffer
set complete            " Word completion
set fileformat=unix     " Avoids error in Python files
set ruler               " Display line numbers
set updatetime=250      " Time to update

" Python location (required for neovim)
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'

let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Changes background color from 120th character of the line
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Removes extra spaces at the end of all line when the file is saved
autocmd BufWritePre * StripWhitespace


" Syntatics
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 2
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Copy cut Paste
let g:copy_cut_paste_no_mappings = 1
nmap <C-S-c> <Plug>CCP_CopyLine
vmap <C-S-c> <Plug>CCP_CopyText

nmap <C-S-x> <Plug>CCP_CutLine
vmap <C-S-x> <Plug>CCP_CutText

nmap <C-S-v> <Plug>CCP_PasteText


" MAPPING

" Maps Ctrl+S to save file
inoremap <c-s> <c-o>:w<CR>
nnoremap <c-s> :w<CR>
" Maps space to fold/unfold
nnoremap <space> za

"Maps Multicursor plugin
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Typos
command WQ wq
command Wq wq
command W w
command Q q

" Required for Chromatica
if (has("termguicolors"))
 set termguicolors
endif

" Theme
colorscheme OceanicNext
