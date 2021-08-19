local M = {}

function M.is_buffer_empty()
  -- Check whether the current buffer is empty
  return vim.fn.empty(vim.fn.expand('%:t')) == 1
end

function M.has_width_gt(cols)
  -- Check if the windows width is greater than a given number of columns
  return vim.fn.winwidth(0) / 2 > cols
end

function remap(x, noremap, silent)
  function fn (keybind, cmd)
    vim.api.nvim_set_keymap(x, keybind, cmd, { noremap = noremap, silent = silent })
  end

  return fn
end

M.nnoremap = remap('n', true, true)
M.vnoremap = remap('v', true, true)
M.xnoremap = remap('x', true, true)
M.inoremap = remap('i', true, true)


return M
