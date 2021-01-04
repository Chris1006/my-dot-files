" Tab / Ctrl+Tab for Tab Navigation
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Ctrl+hjkl for Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" ctrl+s to save
nnoremap <C-s> :w<CR>
" ctrl+Q to quit out
nnoremap <C-Q> :wq!<CR>
" control-c as escape
nnoremap <C-c> <Esc>
" Tab-completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
