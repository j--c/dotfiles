"
" markdown specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/markdown/markdown.vim<cr>

"
" gtd context
" ----------------------------
function! Context()
    let l:contexts = "&1 home\n&2 internet\n&3 contact\n&4 errand\n&5 ccc\n&6 dfm"
    let l:context = ""
    let choice = confirm("Pick a Context:", l:contexts, 0, "Question")
    if choice == 1
        let l:context = "home"
    elseif choice == 2
        let l:context = "internet"
    elseif choice == 3
        let l:context = "contact"
    elseif choice == 4
        let l:context = "errand"
    elseif choice == 5
        let l:context = "ccc"
    elseif choice == 6
        let l:context = "dfm"
    endif
    silent execute "normal A @".l:context
endfunction

command! -nargs=0 Context call Context()
nnoremap <leader>2 :Context<cr>

"
"" current date
" ----------------------------
function! CurrentDate()
    let l:datetime = strftime("%m-%d-%Y")
    let l:dateoptions = "&asap \n&some"
    let l:duedate = ""
    let choice = confirm("Pick a Due Date:", l:dateoptions, 0, "Question")
    if choice == 1
        let l:duedate = "**due: asap** "
    elseif choice == 2
        let l:duedate = "**due: ".l:datetime."** "
    endif
    silent execute "normal 0la".l:duedate
endfunction
command! -nargs=0 CurrentDate call CurrentDate()
nnoremap <leader>3 :CurrentDate<cr>

"
" custom fold expression
" ----------------------------

" Thank you Drew Neil!
" The following functions were created by watching Episode #38 of Vimcasts 
" (http://vimcasts.org/episodes/writing-a-custom-fold-expression/)
"function! FoldMarkdown()
"    let l:currentline = getline(v:lnum)
"    if match(l:currentline, '^##') >= 0
"        return ">2"
"    elseif match(l:currentline, '^#') >= 0
"        return ">1"
"    else
"        return "="
"    endif
"endfunction

"function! GetMarkdownFoldText()
"    let foldsize = (v:foldend-v:foldstart)
"    return getline(v:foldstart)
"endfunction

"
" folding 
" ----------------------------
"setlocal foldtext=GetMarkdownFoldText()
"setlocal foldexpr=FoldMarkdown()
"setlocal foldmethod=expr
"setlocal foldcolumn=3
"setlocal foldlevel=1

"
" tabs 
" ----------------------------
set softtabstop=3
set shiftwidth=3
set tabstop=3
