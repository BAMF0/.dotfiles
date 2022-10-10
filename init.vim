" General settings
syntax on " syntax highlighting

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set autoindent " indent nl the same amount as the line typed

set number relativenumber " turn hybrid line numbers on
set nu rnu

set tabstop=4				  " the number of columns occupied by a tab
set softtabstop=0 noexpandtab " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4 			  " indent corresponds to single tab

" Plugins using vim-plug

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'mhinz/vim-startify'
	Plug 'morhetz/gruvbox'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Theme
colorscheme gruvbox

" Keymaps

"" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
