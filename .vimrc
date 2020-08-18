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
tnoremap <leader>w <c-w>w
tnoremap <leader>c <c-w>c
nnoremap <leader>v :vsp<cr>


" quickfix
" ----------------------------
function! VG(...)
   execute 'vimgrep /' . a:2 . '/g ' . a:1
endfunction
command! -nargs=* VG call VG(<f-args>)
nnoremap <leader>x :VG notes/*.md
nnoremap <leader>l :cnext<cr>

"
" terminal
" ----------------------------
"nnoremap <leader>1 :term<cr>


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
set incsearch
set path=,,**
let g:ctrlp_map = '<leader>f'

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
" New Note
" ----------------------------
function! NewNote()

    execute 'e ' . fnameescape('notes/'.strftime('%y%m%d%H%M%S') . '.md')
endfunction
command! NewNote call NewNote()
nnoremap <leader>+ :NewNote<cr>


"
" netrw - project drawer
" ----------------------------
let g:netrw_liststyle=3
let g:netrw_banner=0
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
" for ctrlp mainly
" ----------------------------
set wildignore+=*/tmp/*,*/target/*,*.so,*.swp,*.zip,*.pyc,__init__*.py


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
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
call plug#end()


"
" colors
" ----------------------------
set background=dark
colorscheme iceberg
