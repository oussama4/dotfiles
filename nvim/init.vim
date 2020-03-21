set number
set shiftwidth=4
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" minpac configuration
packadd minpac
 
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('fatih/vim-go')
call minpac#add('itchyny/lightline.vim')
call minpac#add('ycm-core/YouCompleteMe')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('fatih/molokai')
call minpac#add('honza/vim-snippets')
call minpac#add('SirVer/ultisnips')
call minpac#add('tpope/vim-commentary')

" gopls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" youcompleteme configuration
let g:ycm_autoclose_preview_window_after_completion=1

let g:UltiSnipsExpandTrigger="<c-z>"

let g:go_gopls_complete_unimported = 1

colorscheme solarized8
