-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/chris/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/chris/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/chris/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/chris/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/chris/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  colorschemes = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/colorschemes",
    url = "https://github.com/lunarvim/colorschemes"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim",
    url = "https://github.com/christianchiarulli/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-terminal"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-terminal",
    url = "https://github.com/s1n7ax/nvim-terminal"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2�\4\0\0\5\0\25\0!4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\0013\2\5\0:\2\6\0013\2\a\0003\3\b\0:\3\t\2:\2\n\0013\2\v\0002\3\0\0:\3\f\2:\2\r\0013\2\14\0002\3\0\0:\3\15\2:\2\16\0013\2\17\0002\3\0\0:\3\18\2:\2\19\0013\2\20\0003\3\21\0002\4\0\0:\4\22\3:\3\23\2:\2\24\1>\0\2\1G\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\vheight\3\30\tside\tleft\21hide_root_folder\1\16auto_resize\1\nwidth\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\b\thint\b\nerror\b\fwarning\b\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\15update_cwd\1\16open_on_tab\1\18open_on_setup\1\15auto_close\1\18disable_netrw\2\18hijack_cursor\1\17hijack_netrw\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/chris/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2�\4\0\0\5\0\25\0!4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\0013\2\5\0:\2\6\0013\2\a\0003\3\b\0:\3\t\2:\2\n\0013\2\v\0002\3\0\0:\3\f\2:\2\r\0013\2\14\0002\3\0\0:\3\15\2:\2\16\0013\2\17\0002\3\0\0:\3\18\2:\2\19\0013\2\20\0003\3\21\0002\4\0\0:\4\22\3:\3\23\2:\2\24\1>\0\2\1G\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\vheight\3\30\tside\tleft\21hide_root_folder\1\16auto_resize\1\nwidth\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\b\thint\b\nerror\b\fwarning\b\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\15update_cwd\1\16open_on_tab\1\18open_on_setup\1\15auto_close\1\18disable_netrw\2\18hijack_cursor\1\17hijack_netrw\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
