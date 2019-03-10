""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim configuration
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically set screen title
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &titlestring = " vim " . expand("%:p") . " "
if &term == "screen" || &term == "xterm"
    set title
endif

"Activate filetype dectection
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on

" Syntax highlighting on
" cursor line and search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set cursorline
set hlsearch

" Set line number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number

" Python indentation (page 58 of A byte of vim)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Autocomplete tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set wildmenu wildmode=list:longest

" For gvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set go=M
    set go-=mT
    set lines=35
    set columns=80
else
    set background=dark
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initial cursor positioning {{{
" [copied from vimrc_example.vim]
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom filetype extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" proble file (prb) and paramater file (prm) for klusta 
au BufNewFile,BufRead *.prb,*.prm set syntax=python 
" hoc and ses look nice with java
au BufNewFile,BufRead *.hoc,*.ses set syntax=java
" custom for NMODL
au BufNewFile,BufRead *.mod set syntax=NMODL
