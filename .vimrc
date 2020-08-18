" Note (to self): To look in future and edit the sample copy content
" ################## SAMPLE FILE COPY END ####################

" Tab Spacing
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set autoindent
set expandtab

" Line Number
set number

"######################## Plug Plugins #######################

call plug#begin('~/.vim/plugged')

" LightLine (may be removed in future if not found useful)
Plug 'itchyny/lightline.vim'

" Ale (for linting)
Plug 'dense-analysis/ale'

" JS syntax highlighter
Plug 'pangloss/vim-javascript'

" JSX syntax highlighter
Plug 'maxmellon/vim-jsx-pretty'

" coc.nvim (auto completion engine)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"############## Custom Plugin Configurations ################

" LightLine 
set laststatus=2
set noshowmode

let g:lightline = {'colorscheme': 'one'}

" JS syntax 
let g:vim_jsx_pretty_colorful_config = 1
