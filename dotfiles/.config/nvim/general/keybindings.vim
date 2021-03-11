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
nnoremap <C-c> :bdelete<CR>
" Tab-completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" window resize
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

