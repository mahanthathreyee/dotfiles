" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Note (to self): To look in future and edit the sample copy content
" ################## SAMPLE FILE COPY END ####################

" Tab Spacing
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set autoindent
set expandtab

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
