"
" java specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/java/java.vim<cr>

"
" build 
" ----------------------------
set makeprg=gradle\ build\ --info
nnoremap <leader>5 :make<cr> 


" fold 
" ----------------------------
setlocal foldcolumn=3
set foldmethod=marker 
set foldmarker={,}
set foldlevel=1

"
" tags
" ----------------------------
nnoremap <leader>3 :TagbarToggle<cr> 
nnoremap <leader>t :!ctags -R src<cr>
