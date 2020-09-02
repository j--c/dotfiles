"
" markdown specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/markdown/markdown.vim<cr>

"
" gtd context
" ----------------------------
function! Context()
    let l:contexts = "&Waiting\n&Home\n&Internet\n&Outreach\n&Cathy\n&Daniel"
    let l:context = ""
    let choice = confirm("pick a context", l:contexts, 0, "Question")
    if choice == 1
        let l:context = "wait"
    elseif choice == 2
        let l:context = "home"
    elseif choice == 3
        let l:context = "internet"
    elseif choice == 4
        let l:context = "outreach"
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
" gtd complete task
" ----------------------------
function! CompletTask()
    silent execute ":.s/\ ]/x]"
    silent execute ":noh"
endfunction

command! -nargs=0 CompletTask call CompletTask()
nnoremap <leader>5 :CompletTask<cr>

"
" current date
" ----------------------------
nnoremap <leader>3 "=strftime("%d-%b-%Y")<cr>P

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
