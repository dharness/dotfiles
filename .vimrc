set nocompatible              " be iMproved, required
filetype on                  " required

syntax on

" Turn off arrow keys to enforce good habbits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ------ ALL PLUGINS -----
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'lifepillar/vim-solarized8'
Plugin 'hdima/python-syntax'
Plugin 'Lokaltog/powerline'
Plugin 'fatih/vim-go'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sheerun/vim-polyglot'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'vim-airline/vim-airline'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Powerline config
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256

" set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


" Run Nertree when vim starts up 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Line numebring
set number                     " Show current line number
set relativenumber             " Show relative line numbers

set clipboard=unnamed
set mouse=a
set bs=2

" GOLANG CONFIG
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" NEOCOMPLETE
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1

" AUTOSAVE
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

set noeol
set tabstop=4
set shiftwidth=4
set expandtab
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set noswapfile

" COLOURS
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark

nmap <silent> <C-\> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.jade set filetype=pug
syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
" CTRLP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set laststatus=2
au BufRead,BufNewFile *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:ctrlp_working_path_mode = 0
