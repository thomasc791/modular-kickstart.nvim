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
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, { desc = 'Toggle Undo Tree' })
    end,
  },
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    opts = {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
        ['core.keybinds'] = {
          config = {
            default_keybinds = false,
          },
        },
      },
    },
  },
  'catppuccin/nvim',
  {
    'tanvirtin/monokai.nvim',
    name = 'monokai',
  },
  {
    'folke/tokyonight.nvim',
  },
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

return plugins
