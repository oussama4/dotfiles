set nocompatible
syntax on
set bg=dark
set wildmenu
set ruler
set number
set autoindent
set incsearch
set showmode
set showcmd
set shiftwidth=4
set softtabstop=4

" show the matching part of the pair for [] {} and ()
set showmatch

filetype plugin indent on

" minpac configuration
packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('itchyny/lightline.vim')
call minpac#add('altercation/vim-colors-solarized')

" youcompleteme configuration
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_auto_trigger = 1
let g:ycm_python_binary_path = '/usr/bin/python3'

"let python_highlight_all=1

set laststatus=2
let g:lightline = {'colorscheme' : 'solarized'}
colorscheme solarized
