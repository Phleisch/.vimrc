"--------------------------- 'Manual' Installations ---------------------------"

" Automate the installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install the abstract color theme if it is not installed
if empty(glob('~/.vim/colors/abstract.vim'))
  silent !curl -fLo ~/.vim/colors/abstract.vim --create-dirs
  \ https://raw.githubusercontent.com/jdsimcoe/abstract.vim/master/colors/abstract.vim
endif

"------------------------------ Install Plug-Ins ------------------------------"

call plug#begin()
" Need to manually download default format programs
Plug 'Chiel92/vim-autoformat' " Format files based on default format programs
au BufWrite * :Autoformat     " Automatically format files on save
call plug#end()

"------------------------------ Plug-In Settings ------------------------------"

" vim autoformat
let g:autoformat_retab = 0      " Turn off auto retab when saving files
let g:autoformat_autoindent = 0 " Turn off auto indent when saving files

"---------------------------------- Keybinds ----------------------------------"

" Keybind settings
nnoremap m :bnext<CR>
nnoremap n :bprev<CR>

"------------------------------ Regular Settings ------------------------------"

" Regular settings follow
syntax on                       " Enable syntax processing
set number                      " Enable line numbers
set showcmd                     " Show the last command entered
set t_Co=256                    " Enable 256 colors in vim
set expandtab                   " Tabs are spaces
set tabstop=2                   " Number of spaces a tab counts for
set cursorline                  " Highlight the current line
set softtabstop=2               " Number of spaces in tab when editing
set guifont='hack'              " Set the font
set colorcolumn=80              " Set a right bound
set background=dark             " Set the colorscheme to a dark theme
colorscheme abstract            " Set colorscheme to abstract
