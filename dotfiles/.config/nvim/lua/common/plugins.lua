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
    use {
      'VonHeikemen/lsp-zero.nvim',
      'williamboman/mason.nvim',
      "williamboman/mason-lspconfig.nvim",
      'neovim/nvim-lspconfig',
      'glepnir/lspsaga.nvim'
    }
    
    -- completion
    use {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
    }
    
    -- snippets
    use {
      'hrsh7th/vim-vsnip',
      'hrsh7th/vim-vsnip-integ',
      'L3MON4d3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
    
    -- formatter
    use 'mhartington/formatter.nvim'


    -- icons
    use 'kyazdani42/nvim-web-devicons'

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
    use "lunarvim/colorschemes"
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use "lunarvim/darkplus.nvim"
    
    -- git stuff
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }
    -- markdown previewer
    use 'iamcco/markdown-preview.nvim'

    -- nvim terminal
    use 's1n7ax/nvim-terminal'

    use 'norcalli/nvim-colorizer.lua'
  end)






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
