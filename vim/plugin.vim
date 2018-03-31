" ############# vim-plug #########
" ############# vim-plug #########

" Specify a directory for plugins
call plug#begin('~/.trippcconfig/vim/plugged')

" ColorScheme
Plug 'rafi/awesome-vim-colorschemes'

" The one and only NerdTree
Plug 'scrooloose/nerdtree'

"make status line cool
Plug 'vim-airline/vim-airline'

"surround vim
Plug 'tpope/vim-surround'

"javascript support
Plug 'pangloss/vim-javascript'

"JSX support
Plug 'mxw/vim-jsx'

"Comment support
Plug 'scrooloose/nerdcommenter'

"auto pairs
Plug 'jiangmiao/auto-pairs'

"jinja template hilight
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['jinja', 'twig']}

"rust support for nvim
Plug 'rust-lang/rust.vim', {'for': ['rs']}

"emmet for vim
Plug 'mattn/emmet-vim', {'for': ['jinja', 'html', 'javascript', 'htm', 'shtml', 'stm', 'twig', 'eruby']}

"file finder ctrlP
Plug 'ctrlpvim/ctrlp.vim'

"fugutive vim
Plug 'tpope/vim-fugitive'

"ALE Async Linting Engine
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()
