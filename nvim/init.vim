set number
set shiftwidth=4
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" minpac configuration
packadd minpac
 
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('itchyny/lightline.vim')
"call minpac#add('altercation/vim-colors-solarized')
call minpac#add('honza/vim-snippets')
call minpac#add('SirVer/ultisnips')
"call minpac#add('tpope/vim-commentary')
"call minpac#add('Shougo/deoplete.nvim')
"call minpac#add('zchee/deoplete-jedi')
"call minpac#add('autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'})

"let g:deoplete#enable_at_startup = 1
"let g:LanguageClient_serverCommands = {'python': ['/usr/bin/pyls']}

" youcompleteme configuration
let g:ycm_autoclose_preview_window_after_completion=1

let g:UltiSnipsExpandTrigger="<c-z>"
