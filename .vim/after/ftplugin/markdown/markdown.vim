"
" markdown specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/markdown/markdown.vim<cr>

"
" spelling
" ----------------------------
set spelllang=en
set spell


"
" custom fold expression
" ----------------------------

" Thank you Drew Neil!
" The following functions were created by watching Episode #38 of Vimcasts 
" (http://vimcasts.org/episodes/writing-a-custom-fold-expression/)
function! FoldMarkdown()
    let l:currentline = getline(v:lnum)
    if match(l:currentline, '^##') >= 0
        return ">2"
    elseif match(l:currentline, '^#') >= 0
        return ">1"
    else
        return "="
    endif
endfunction

function! GetMarkdownFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return getline(v:foldstart)
endfunction

"
" folding 
" ----------------------------
setlocal foldtext=GetMarkdownFoldText()
setlocal foldexpr=FoldMarkdown()
setlocal foldmethod=expr
setlocal foldcolumn=3
setlocal foldlevel=1

"
" tabs 
" ----------------------------
set softtabstop=3
set shiftwidth=3
set tabstop=3
