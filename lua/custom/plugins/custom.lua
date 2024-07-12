local plugins = {
  'jose-elias-alvarez/null-ls.nvim',
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup()
      vim.api.nvim_create_autocmd('VimEnter', {
        desc = 'Open the file tree if nothing is entered as a command',
        group = vim.api.nvim_create_augroup('nvim-tree-open-no-args', { clear = true }),
        callback = function()
          if #vim.v.argv == 2 then
            vim.cmd 'NvimTreeOpen'
          end
        end,
      })
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
}

return plugins
