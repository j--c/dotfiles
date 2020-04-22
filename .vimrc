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
syntax enable
filetype indent on

"
" ui config
" ----------------------------
set colorcolumn=100
highlight ColorColumn ctermbg=7
set linebreak
set relativenumber
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set wildmenu

"
" spaces and tabs
" ----------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"
" invisible characters
" ----------------------------
set listchars=tab:▸\ ,eol:¬,space:␣
nnoremap <leader>0 :set list!<cr>

"
" movement
" ----------------------------
nnoremap j gj
nnoremap k gk
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

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
nnoremap <leader>w <c-w>w
nnoremap <leader>c <c-w>c
nnoremap <leader>= <c-w>+
nnoremap <leader>- <c-w>-
tnoremap <leader>w <c-w>w
tnoremap <leader>c <c-w>c
tnoremap <leader>= <c-w>+
tnoremap <leader>- <c-w>-
nnoremap <leader>v :vsp<cr>

"
" terminal
" ----------------------------
command! -nargs=* T split | terminal <args>
nnoremap <leader>1 :term<cr>

"
" searching and finding
" ----------------------------
set incsearch
set path=,,**
nnoremap <leader>f :find 

"
" folding
" ----------------------------
nnoremap <space> za 

"
" new file
" ----------------------------
nnoremap <leader>n :e 

"
" deoplete
" ----------------------------
let g:deoplete#enable_at_startup = 1

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
let g:netrw_liststyle=0
let g:netrw_banner=1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
autocmd FileType netrw setl bufhidden=delete
nnoremap <leader><leader> :10Lexplore<cr>

"
" ultisnips
" ----------------------------
let g:UltiSnipsSnippetsDir="~/Documents/git-repos/dotfiles/.vim/plugged/vim-snippets/snippets"
let g:UltiSnipsExpandTrigger="<tab>"

"
" vim-airline
" ----------------------------
let g:airline_theme="murmur"
"
" package manager
" ----------------------------
call plug#begin('~/Documents/git-repos/dotfiles/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()


"
" colors
" ----------------------------
set background=dark
colorscheme iceberg
