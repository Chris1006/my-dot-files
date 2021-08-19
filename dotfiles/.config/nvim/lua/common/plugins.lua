local M ={}

function M.setup()
  local execute = vim.api.nvim_command
  local fn = vim.fn

  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
  end

  local packer = require'packer'

  packer.startup(function()
    local use = packer.use
 
    -- packer himself
    use 'wbthomason/packer.nvim'   
    
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    
    -- lsp stuff
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'glepnir/lspsaga.nvim' 
    use 'hrsh7th/nvim-compe'

    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    use 'mhartington/formatter.nvim'

    -- cool status bar
    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- file manager
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- better tab bar
    use 'romgrk/barbar.nvim'

    -- telescope -> best fuzzy finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- dashboard
    use 'glepnir/dashboard-nvim'

    -- themes, e.g. nord theme
    use 'christianchiarulli/nvcode-color-schemes.vim'

    -- git stuff
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('gitsigns').setup()
      end
    } 

    -- markdown previewer
    use 'iamcco/markdown-preview.nvim'

    -- nvim terminal
    use 's1n7ax/nvim-terminal'

    use 'junegunn/rainbow_parentheses.vim'
    use 'norcalli/nvim-colorizer.lua'
  end)

  require'colorizer'.setup()
  vim.g['rainbow#max_level'] = 16
  vim.g['rainbow#pairs'] =  {{'(', ')'}, {'[', ']'}, {'{', '}'}}

  vim.api.nvim_command('autocmd FileType * RainbowParentheses')
end



return M


--[[" check for installed plug
call plug#begin()
  
  Plug 'ryanoasis/vim-devicons' " vimscript
  

  Plug 'SirVer/ultisnips'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' 
  Plug 'windwp/nvim-autopairs'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'rktjmp/lush.nvim'
  Plug 'npxbr/gruvbox.nvim'
  Plug 'glepnir/dashboard-nvim'
  Plug 'mhartington/formatter.nvim' 
call plug#end()

]]
