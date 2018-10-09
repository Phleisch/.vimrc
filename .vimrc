" Automate the installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Dracula colorscheme
Plug 'dracula/vim',{'as':'dracula'}

" Cooler status, and visible vim windows
Plug 'vim-airline/vim-airline'

" Themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" Vim directory
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

" Keybind settings
nnoremap m :bnext<CR>
nnoremap n :bprev<CR>
nnoremap J :NERDTreeToggle<CR>

" Regular settings follow
set number          " Enable line numbers
set tabstop=4       " Number of spaces a tab counts for
set softtabstop=4   " Number of spaces in tab when editing
set expandtab       " Tabs are spaces
set showcmd 		" Show the last command entered
set cursorline      " Highlight the current line
set guifont='hack'  " Set the font
set colorcolumn=80  " Set a right bound
syntax on           " Enable syntax processing

" Plug-in settings follow
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

colorscheme dracula " Set color scheme to Dracula
