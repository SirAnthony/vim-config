execute pathogen#infect()
syntax on
filetype plugin indent on
let NERDTreeIgnore = ['\.pyc$', '\.o$']
let g:jedi#popup_on_dot = 0
let g:session_autosave = 'no'
if has('gui_running')
  set guifont=Liberation\ Mono\ 13
endif
set nu
set shiftwidth=4
set expandtab
set softtabstop=4
set ruler
set hlsearch
colorscheme monokai

let g:jsx_ext_required = 0

"-------------------
" Shortcuts
:map <esc> :noh <CR>
:map <C-c> "+y
:map <C-p> "+p

"-------------------
" ALE settings
let g:ale_linters = {
\    'javascript': ['jshint'],
\}
" let g_ale_lint_on_text_changed = 'never'
" Move to errors with ^k / ^j
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

hi ExtraWhitespace ctermbg=red ctermfg=red guibg=red guifg=red
match ExtraWhitespace /\s\+$/
hi Search gui=reverse

