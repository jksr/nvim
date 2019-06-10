""""""""""""  Initialize plugin system ---------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


" AutoAlign plugin
Plug 'junegunn/vim-easy-align'

" Powerline plugin
Plug 'vim-airline/vim-airline'

" Snippet plugin and snippet library
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Git difference plugin
Plug 'airblade/vim-gitgutter'

"""""" On-demand loading
" Explorer plugin
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Latex plugin
Plug 'lervag/vimtex', { 'for':  'tex' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()







""""""""""""  General setting ---------------------------------------------------------

set nocompatible        " Set nocompatible with vi to save resource
set showmatch           " Show matching brackets
set ignorecase          " Do case insensitive matching
set hlsearch            " Highlight search patterns
set number              " Show line numbers
set hidden              " Make vim able to manage multiple buffer
set expandtab           " Convert tabs to white space
set autoindent          " Indent a new line as the line just typed
set tabstop=4           " Set tab width
set softtabstop=4       " Regard multiple white space as tab
set shiftwidth=4        " Set autoindent width
"set cc=80               " Set an 80 column border for good coding style

syntax on               " Syntax

" Bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Show invisible charactors
set list
set listchars=tab:▸-,trail:-,eol:¬





""""""""""""  Plugin setting ---------------------------------------------------------

" Latex plugin setting
let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" Snippet plugin setting
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsSnippetDirectories=["~/.config/nvim/mysnippets"]
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]


" Explorer plugin setting
map <C-n> :NERDTreeToggle<CR>


let g:deoplete#enable_at_startup = 1
