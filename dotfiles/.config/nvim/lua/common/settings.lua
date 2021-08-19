local M = {}

function M.setup()
  vim.cmd('syntax on')        -- syntax highlighting
  vim.o.number = true             -- line numbers
  vim.o.relativenumber = true     -- relative line number
  vim.o.hidden = true             -- dont close buffer on opening new file
  vim.o.wrap = false              -- no linebreaks for long lines
  vim.o.encoding = 'utf-8'        -- UTF-8 -> the one and only
  vim.o.cmdheight = 1             -- better cmd height
  vim.o.smartindent = true        -- auto indentations
  vim.o.smarttab = true           -- smart tabs
  vim.o.expandtab = true          -- spaces > tabstops
  vim.o.tabstop = 2               -- tabstop length
  vim.o.shiftwidth = 2            -- shift width length
  vim.o.cursorline = true         -- always know where you are
  vim.o.ruler = true
  vim.o.splitright = true
  vim.o.splitbelow = true
  vim.o.colorcolumn = "80"        -- visual indicator for line length
  vim.o.showtabline = 2           -- always show tabbar
  vim.o.breakindent = true
  vim.o.showmode = false          -- no need to know what i do
  vim.o.clipboard = 'unnamedplus' -- best way to clipboard (copy paste working)
  vim.g.loaded_netrwPlugin = 1    -- no need for netrw
  vim.o.backup = false            -- no backup
  vim.o.writebackup = false       -- no write backup
  vim.o.termguicolors = true
end

return M
