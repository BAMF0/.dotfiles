" General settings
let mapleader = "," " map leader to comma

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set autoindent " indent nl the same amount as the line typed

set hidden " hide buffer instead of closing

set number relativenumber " turn hybrid line numbers on
set nu rnu

set tabstop=4				  " the number of columns occupied by a tab
set softtabstop=0 noexpandtab " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4 			  " indent corresponds to single tab

" Plugins using vim-plug

call plug#begin()
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
			\ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
	Plug 'mhinz/vim-startify'

	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'cespare/vim-toml', { 'branch': 'main' }

	Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

	Plug 'tpope/vim-surround'
	Plug 'airblade/vim-gitgutter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons' 
	Plug 'lewis6991/impatient.nvim'
	Plug 'rcarriga/nvim-notify'

	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

" Plugin settings

"" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='gruvbox'

"" coc
" Disable startup warning
let g:coc_disable_startup_warning = 1

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

"" NerdTree 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"Exit Vim if NERDTree is the only window remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"autocmd BufEnter * lcd %:p:h

"" toggleterm
lua << EOF
require("toggleterm").setup{
	open_mapping = [[<Leader>t]],
	insert_mappings = false,
	terminal_mappings = true,
	shade_terminals = false,
}
EOF

" Theme
colorscheme gruvbox
set termguicolors

syntax on " syntax highlighting

" Functions

"" toggleterm
lua << EOF
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-w>h', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-w>j', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-w>k', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-w>l', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
EOF

" Keymaps

"" General
" Unload current buffer 
nnoremap <C-q> :bd<CR>

" exit insert mode
inoremap jk <ESC>

"" NerdTree
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

"" coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use enter for autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

"" toggleterm
"nnoremap <leader>t :ToggleTerm<Enter> 
