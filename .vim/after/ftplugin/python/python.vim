"
" python specific setting files
" ----------------------------
nnoremap <leader>8 :e ~/Documents/git-repos/dotfiles/.vim/after/ftplugin/python/python.vim<cr>


"
" build 
" ----------------------------
tnoremap <leader>5 python3 -m unittest tests/ 


" fold 
" ----------------------------
setlocal foldcolumn=3
set foldmethod=indent 
set foldlevel=1


"
" tags
" ----------------------------
nnoremap <leader>t :!ctags -R src<cr>
