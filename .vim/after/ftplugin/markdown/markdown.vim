" folding for markdown

" Thank you Drew Neil!
" The following functions were created by watching Episode #38 of Vimcasts 
" (http://vimcasts.org/episodes/writing-a-custom-fold-expression/)
function! FoldMarkdown()
    let currentline = getline(v:lnum)
    if match(currentline, '^##') >= 0
        return ">2"
    elseif match(currentline, '^#') >= 0
        return ">1"
    else
        return "="
    endif
endfunction

function! GetMarkdownFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction

setlocal foldlevel=1
setlocal foldcolumn=3
setlocal foldmethod=expr
setlocal foldexpr=FoldMarkdown()
setlocal foldtext=GetMarkdownFoldText()
