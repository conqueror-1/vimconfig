call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'scrooloose/nerdcommenter'
Plug 'cdelledonne/vim-cmake'
call plug#end()
