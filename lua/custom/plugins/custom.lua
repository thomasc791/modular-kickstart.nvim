local plugins = {
  'jose-elias-alvarez/null-ls.nvim',
  { 'nvim-tree/nvim-tree.lua', opts = {} },

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
