set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'mhartington/oceanic-next'
Plug 'cloudhead/neovim-fuzzy'
Plug 'terryma/vim-multiple-cursors'
Plug 'eugen0329/vim-esearch'

" deopletevim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()


" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" Duplicate a line without mucking up the registers
noremap <Leader>D "dY"dp
noremap <Leader>c :let @/=""
nnoremap <C-p> :FuzzyOpen<CR>


:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" Line numbers in Explore mode
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_list_hide= '.*\.pyc$'

set nopaste
