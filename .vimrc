set number
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
set laststatus=2

" show the matching part of the pair for [] {} and ()
set showmatch

" ignore case in search
set ignorecase
set hlsearch
set incsearch

filetype plugin indent on

" minpac configuration
packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
"call minpac#add('ycm-core/YouCompleteMe')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('honza/vim-snippets')
call minpac#add('SirVer/ultisnips')
call minpac#add('tpope/vim-commentary')
call minpac#add('jmcantrell/vim-virtualenv')
call minpac#add('fatih/vim-go')
call minpac#add('pantharshit00/vim-prisma')

" youcompleteme configuration
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_auto_trigger = 1
let g:UltiSnipsExpandTrigger="<c-z>"

let python_highlight_all=1
syntax on

"let g:lightline = {'colorscheme' : 'solarized'}
colorscheme solarized8

" python venv
" let g:virtualenv_directory = '/home/osama/venvs'
" au filetype go inoremap <buffer> . .<C-x><C-o>

let g:go_gopls_enabled = 0
