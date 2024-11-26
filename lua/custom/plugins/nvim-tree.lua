return {
  'nvim-tree/nvim-tree.lua',
  event = 'VimEnter',
  actions = {
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
  },
  sync_root_with_cwd = true,
  config = function()
    require('nvim-tree').setup {}
    local api = require 'nvim-tree.api'

    -- lua require("nvim-tree.api").tree.change_root("/home")
    vim.keymap.set('n', '<C-s>', api.node.open.horizontal, { desc = 'Open: Horizontal Split' })
    vim.keymap.set('n', '<leader>o', api.tree.toggle, { desc = '[O]pen or Close File Tree' })
  end,
}
