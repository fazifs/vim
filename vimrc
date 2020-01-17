filetype on
syntax on
set guifont=Menlo\ Regular:h18
set colorcolumn=90
set number
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
set autoindent
set tabstop=2
set shiftwidth=2
autocmd FileType yaml setlocal ai ts=2 sw=2 et
autocmd FileType yml setlocal ai ts=2 sw=2 et

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
