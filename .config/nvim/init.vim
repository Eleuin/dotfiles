"plug modules
call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
call plug#end()

"vim options
set nu
set cursorline
hi cursorline cterm=none ctermbg=darkblue ctermfg=white
