"plug modules
call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

"vim options
set nu
set cursorline
hi cursorline cterm=none ctermbg=darkblue ctermfg=black
set statusline=%{fugitive#statusline()}
