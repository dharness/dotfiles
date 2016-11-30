set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let python_highlight_builtin_funcs=1
let python_highlight_all=1

let g:formatter_yapf_style = 'pep8'
au BufWrite * :Autoformat

syntax on
