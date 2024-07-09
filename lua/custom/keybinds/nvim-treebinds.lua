local M = {}

function M.attach_func(bufnr)
  local api = require 'nvim-tree.api'
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set('n', '<leader>o', '<cmd>NvimTreeOpen<cr>', opts 'Open')
end
return M
