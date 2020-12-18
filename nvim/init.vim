set runtimepath^=~/.vim runtimepath+=~/.vim/after
	let &packpath = &runtimepath
	source ~/.vimrc
source $HOME/.config/nvim/plug-config/coc.vim


call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'darfink/vim-plist'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-locfile'}
Plug 'vimwiki/vimwiki'
" List ends here. Plugins become visible to Vim after this call.

call plug#end()

augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
augroup END

let g:deoplete#enable_at_startup = 1
colorscheme onedark
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	highlight = {
		enable = true,
	},
}
EOF
