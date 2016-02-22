set nocompatible              " required
filetype off                  " required

set t_Co=256

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Python PEP8 
Plugin 'nvie/vim-flake8'

" File browser
Plugin 'scrooloose/nerdtree'

" Utalise tabs
Plugin 'jistr/vim-nerdtree-tabs'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" YouCompleteMe

Plugin 'Valloric/YouCompleteMe'

colorscheme atom-dark-256

" Load NERDTree 
autocmd VimEnter * NERDTree

let g:NERDTreeDirArrows=0

" Go to previous (last accessed) window.

autocmd VimEnter * wincmd p
"

