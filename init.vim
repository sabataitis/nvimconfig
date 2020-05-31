if exists('g:vscode')
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
call plug#end()
set clipboard=unnamedplus
xnoremap p pgvy
else
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'ap/vim-css-color'
Plug 'yggdroot/indentline'
call plug#end()

set clipboard=unnamedplus
set termguicolors
colorscheme onedark
"nerdtree toggle with ctrl n
map <C-n> :NERDTreeToggle<CR>
"fzf with ctrl p
nnoremap <C-p> :FZF<CR>
"prettier on save
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"coc configuration
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"confirm completion on enter
inoremap <expr> <enter> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
endif	
