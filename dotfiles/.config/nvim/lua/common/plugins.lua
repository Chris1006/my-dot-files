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
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }
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
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {
disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
        } end
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
