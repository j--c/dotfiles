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
nnoremap <leader>b :bn!<cr>
nnoremap <leader>d :bd!<cr>

"
" windows
" ----------------------------
nnoremap <leader>v :vsp<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>w <c-w>w
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>c <c-w>c
tnoremap <leader>w <c-w>w
tnoremap <leader>c <c-w>c

"
" terminal
" ----------------------------
function! SplitTerm()
    vsp
    term
endfunction
command! SplitTerm call SplitTerm()
nnoremap <leader>1 :SplitTerm<cr>
tnoremap <esc> <c-\><c-n>

nmap <c-s-p> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction


"
" GitGrep 
" ----------------------------
nnoremap <leader>g :Ggrep

"
" folding
" ----------------------------
nnoremap <space> za 

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
" zettlekasten
" ----------------------------
function! Zettlekasten()
    cd ~/Documents/git-repos/zettlekasten
endfunction
command! Zettlekasten call Zettlekasten()
nnoremap <leader>z :Zettlekasten<cr>

"
" netrw - project drawer
" ----------------------------
let g:jmcWildIgnore='__init__.py'
set wildignore+=g:jmcWildIgnore
let g:ctrlp_custom_ignore = '\v[\/](__pycache__|target|dist)|__init__.py$|(\.(swp|ico|git|svn))$'
nnoremap <leader>. :NERDTreeToggle<cr>

let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
nnoremap fd :YcmCompleter GoToDefinition<CR>

"
" searching and finding
" ----------------------------
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_arg_map = 1
set incsearch
set path=,,**

"
" ultisnips
" ----------------------------
let g:UltiSnipsSnippetDirectories=['~/Documents/git-repos/dotfiles/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<leader>m"

"
" vim-airline
" ----------------------------
let g:airline_theme="papercolor"

"
" package manager
" ----------------------------
call plug#begin('~/Documents/git-repos/dotfiles/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
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
colorscheme base16-summerfruit-dark
