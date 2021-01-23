"
" markdown specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/markdown/markdown.vim<cr>

"
" spelling
" ----------------------------
set spelllang=en
set nospell

let g:markdown_fold_style = 'nested'
let g:markdown_fold_override_foldtext=0
noremap ge :execute 'e '.expand("<cfile>")
