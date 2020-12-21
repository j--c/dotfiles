"
" java specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/java/java.vim<cr>

"
" build 
" ----------------------------
tnoremap <leader>5 mvn test<cr> 


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


"
" spelling
" ----------------------------
set spelllang=en
set nospell

"
" line numbers
" ----------------------------
set number
