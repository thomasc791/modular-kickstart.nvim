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

  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }
      local language_servers = require('lspconfig').util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      for _, ls in ipairs(language_servers) do
        require('lspconfig')[ls].setup {
          capabilities = capabilities,
          -- you can add other fields for setting up lsp server in this table
        }
      end
      require('ufo').setup()

      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      -- set keymaps
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    end,
  },
}

return plugins
