"
" author:   j--c
" ----------------------------

"
" map leader
" ----------------------------
let mapleader=","

"
" compatibility
" ----------------------------
set nocompatible
set mouse=a

"
" syntax
" ----------------------------
filetype indent on
syntax enable


"
" ui config
" ----------------------------
highlight ColorColumn ctermbg=7
set colorcolumn=100
set relativenumber
set lazyredraw
set cursorline
set showmatch
set linebreak
set wildmenu
set showcmd

"
" spaces and tabs
" ----------------------------
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

"
" invisible characters
" ----------------------------
set listchars=tab:▸\ ,eol:¬,space:␣
nnoremap <leader>0 :set list!<cr>

"
" movement
" ----------------------------
nnoremap <Right> <nop>
nnoremap <Left> <nop>
nnoremap <Down> <nop>
nnoremap <Up> <nop>
nnoremap j gj
nnoremap k gk

"
" buffers
" ----------------------------
nnoremap <leader>d :bd!<cr>
nnoremap <leader>b :bn!<cr>
nnoremap <leader>p :bp!<cr>
nnoremap <leader>g :b! 

"
" windows
" ----------------------------
nnoremap <leader>v :vsp<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>w <c-w>w
nnoremap <leader>c <c-w>c
tnoremap <leader>w <c-w>w
tnoremap <leader>c <c-w>c

"
" terminal
" ----------------------------
function! SplitTerm()
    sp
    term
endfunction
command! SplitTerm call SplitTerm()
nnoremap <leader>1 :SplitTerm<cr>
tnoremap <esc> <c-\><c-n>

"
" searching and finding
" ----------------------------
let g:ctrlp_map = '<leader>f'
set incsearch
set path=,,**

"
" folding
" ----------------------------
nnoremap <space> za 

"
" new file
" ----------------------------
nnoremap <leader>n :e 

"
" init.vim
" ----------------------------
nnoremap <leader>9 :e ~/Documents/git-repos/dotfiles/.vimrc<cr>

"
" underline
" ----------------------------
function! Underline()
    normal! yypv$r-
endfunction
command! Underline call Underline()
nnoremap <leader>- :Underline<cr>

"
" netrw - project drawer
" ----------------------------
let g:jmcWildIgnore="*/tmp/*,*/target/*,*.so,*.swp,*.zip,*.pyc,__init__*.py,.git*"
set wildignore+=g:jmcWildIgnore
autocmd FileType netrw setl bufhidden=delete
nnoremap <leader><leader> :20Lexplore<cr>
let g:netrw_browse_split=4
let g:netrw_list_hide=g:jmcWildIgnore
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_altv = 1

"
" ultisnips
" ----------------------------
let g:UltiSnipsSnippetsDir="~/Documents/git-repos/dotfiles/.vim/plugged/vim-snippets/snippets"
let g:UltiSnipsExpandTrigger="<tab>"

"
" vim-airline
" ----------------------------
let g:airline_theme="papercolor"

"
" package manager
" ----------------------------
call plug#begin('~/Documents/git-repos/dotfiles/.vim/plugged')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'w0rp/ale'
call plug#end()

let g:onedark_terminal_italics=1
"
" colors
" ----------------------------
set background=dark
set termguicolors
colorscheme flattened_dark
