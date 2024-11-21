return {
  'nvim-tree/nvim-tree.lua',
  event = 'VimEnter',
  config = function()
    require('nvim-tree').setup {}
    local api = require 'nvim-tree.api'

    vim.keymap.set('n', '<C-s>', api.node.open.horizontal, { desc = 'Open: Horizontal Split' })
    vim.keymap.set('n', '<leader>o', api.tree.toggle, { desc = '[O]pen or Close File Tree' })
  end,
}
