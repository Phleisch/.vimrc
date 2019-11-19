"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Indentation Rules							"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" New lines inherit same indentation as previous lines
set autoindent

" Set tabs to have the width of 4 spaces
set tabstop=4

" Convert tabs to spaces
set expandtab

" Enable indentation rules that are specific to file-type
" set filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Search Rules                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable search highlighting
set hlsearch

" Ignore case when searching
set ignorecase

" Switch to case-sensitive search when search includes upper-case
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Text Options                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable line wrapping
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   User Interface Options                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show cursor position
set ruler

" Change color scheme
colorscheme tender

" Highlight the line currently under the cursor
" set cursorline

" Show line numbers in the sidebar
set number

" Set title of window to reflect the file being edited
set title

" Access colors present in 256 color space
let base16colorspace=256
