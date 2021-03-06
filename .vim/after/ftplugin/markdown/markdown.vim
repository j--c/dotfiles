"
" basic implementation of Drew Neil function implemented on Vimcasts
" thanks to Drew Neil!
" ----------------------------
function! FoldLine()
    let thisline = getline(v:lnum)
    if match(thisline, '^######') >= 0
        return ">6"
    elseif match(thisline, '^#####') >= 0
        return ">5"
    elseif match(thisline, '^####') >= 0
        return ">4"
    elseif match(thisline, '^###') >= 0
        return ">3"
    elseif match(thisline, '^##') >= 0
        return ">2"
    elseif match(thisline, '^#') >= 0
        return ">1"
    else
        return "="
    endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=FoldLine()
setlocal foldlevel=1


function! CountTasks()
    %s/[ ]//n
endfunction
command! Count call CountTasks()
"
" markdown specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/markdown/markdown.vim<cr>


"
" lookup file list
" ----------------------------
inoremap <c-x> <c-x><c-f>



" spelling
" ----------------------------
set spelllang=en
set nospell
