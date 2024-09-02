local plugins = {
  --[[ { 'mfussenegger/nvim-lint', opts = {} }, ]]
  {
    'nvim-tree/nvim-tree.lua',
    event = 'VimEnter',
    config = function()
      require('nvim-tree').setup {}
      local api = require 'nvim-tree.api'

      vim.keymap.set('n', '<C-s>', api.node.open.horizontal, { desc = 'Open: Horizontal Split' })
      vim.keymap.set('n', '<leader>o', api.tree.toggle, { desc = '[O]pen or Close File Tree' })
    end,
  },

  'catppuccin/nvim',

  {
    'rmehri01/onenord.nvim',
    name = 'onenord',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'onenord'
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, { desc = 'Toggle Undo Tree' })
    end,
  },
}

return plugins
