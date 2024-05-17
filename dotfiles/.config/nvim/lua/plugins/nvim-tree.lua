

  vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader-r>', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader-n>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

local status, nvimtree = pcall(require, 'nvim-tree')

nvimtree.setup({
  sort_by = "case_sensitive",
  hijack_cursor = true,
  actions = {
    open_file = {
      resize_window = true,
      window_picker = {
        enable = false,
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
  },
  view = {
    side = "left",
  },
  filters = {
    dotfiles = false,
  },      
})
