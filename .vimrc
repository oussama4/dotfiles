syntax on
set number
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
set laststatus=2

" show the matching part of the pair for [] {} and ()
set showmatch

filetype plugin indent on

" minpac configuration
packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim')
call minpac#add('ycm-core/YouCompleteMe')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('honza/vim-snippets')
call minpac#add('SirVer/ultisnips')
call minpac#add('tpope/vim-commentary')
call minpac#add('jmcantrell/vim-virtualenv')
call minpac#add('fatih/vim-go')

" youcompleteme configuration
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_auto_trigger = 1
let g:UltiSnipsExpandTrigger="<c-z>"

let python_highlight_all=1

"let g:lightline = {'colorscheme' : 'solarized'}
colorscheme solarized8

" python venv
let g:virtualenv_directory = '/home/osama/venvs'

