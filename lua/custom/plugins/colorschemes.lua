return {
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  { 'catppuccin/nvim', name = 'catppuccin' },

  {
    'tanvirtin/monokai.nvim',
    name = 'monokai',
  },

  { 'folke/tokyonight.nvim', name = 'tokyonight' },

  { 'rebelot/kanagawa.nvim', name = 'kanagawa' },

  { 'rose-pine/neovim', name = 'rose-pine' },

  { 'Mofiqul/dracula.nvim', name = 'dracula' },

  { 'scottmckendry/cyberdream.nvim', name = 'cyberdream' },

  { 'marko-cerovac/material.nvim', name = 'material' },

  { 'sainnhe/everforest', name = 'everforest' },

  { 'sainnhe/gruvbox-material', name = 'gruvbox-material' },

  { 'navarasu/onedark.nvim', name = 'onedark' },
}
