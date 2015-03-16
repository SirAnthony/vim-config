execute pathogen#infect()
syntax on
filetype plugin indent on
let NERDTreeIgnore = ['\.pyc$', '\.o$']
let g:jedi#popup_on_dot = 0
if has('gui_running')
  set guifont=Liberation\ Mono\ 13
endif
set nu
set shiftwidth=4
set expandtab
set softtabstop=4
colorscheme monokai
hi ExtraWhitespace ctermbg=red ctermfg=red guibg=red guifg=red
match ExtraWhitespace /\s\+$/

