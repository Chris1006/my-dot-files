" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  
  " Intellisense for VIM
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " NV Code Color Schemes and Treesitter
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-treesitter/nvim-treesitter'

  " Airline Status Bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Fuzzy Finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'

  " Rainbow Brackets
  Plug 'junegunn/rainbow_parentheses.vim'

  " Git Integration
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " Start Screen
  Plug 'mhinz/vim-startify'
  Plug 'mattn/webapi-vim'
  Plug 'mattn/vim-gist'  

  " icons
  Plug 'ryanoasis/vim-devicons'

  call plug#end()
