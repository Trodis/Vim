execute pathogen#infect()
filetype plugin indent on          " filetype detection and settings
silent! runtime macros/matchit.vim " matchit comes with Vim
syntax enable
"YCM python path
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
" auto reload vimrc when its save
au BufWritePost .vimrc so ~/.vimrc
"set guioptions-=L
set cursorline
set guifont=Hack\ 13
set cursorcolumn
set nocompatible                   " not strictly necessary but useful in some scenarii
set backspace=indent,eol,start     " let the backspace key work "normally"
set hidden                         " hide unsaved buffers
set incsearch                      " incremental search rules
set laststatus=2                   " not strictly necessary but good for consistency
set ruler                          " shows line number in the status line
set switchbuf=useopen,usetab       " better behavior for the quickfix window and :sb
set tags=./tags;/,tags;/           " search tags files efficiently
set wildmenu                       " better command line completion, shows a list of matches
set background=dark
set incsearch
set ignorecase
set smartcase
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
" Disable Search Highlight
nmap \q :nohlsearch<CR>
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Allow moving between splits by pressing Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Jump to start and end of line using the home row keys
noremap H ^
noremap L $
" Nerd tree F2 toggle
map <F2> :NERDTreeToggle<CR>
" Switched up and down keys
nmap k gj
nmap j gk
" User arrow key to change buffer
:noremap <left> :bp<CR>
:noremap <right> :bn<CR>
" New tab with ctrl + t
map <C-T> :tabnew<CR>
" Quick split Window
nnoremap <silent> ss :split<CR>
nnoremap <silent> vv :vsplit<CR>

" 80-character line coloring
if (v:version >=703)
    set colorcolumn=100
    hi ColorColumn ctermbg=red ctermfg=white guibg=#592929
endif

" Highlight trailing white-spaces
highlight WhitespaceEOL ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$/

colorscheme solarized

" YCM Scratch buffer Supertab
" Complete options (disable preview scratch window, longest removed to aways
" show menu)
set completeopt=menu,menuone


let g:indentLine_color_gui = '#616D7E'
let g:indentLine_char = '┆'
