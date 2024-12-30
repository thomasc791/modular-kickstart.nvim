return {
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    config = function()
      Time = tonumber(os.date '%H')
      if Time >= 18 or Time <= 7 then
        vim.cmd.colorscheme 'gruvbox'
        vim.cmd.hi 'Comment gui=none'
      end
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = { telescope = { enable = true } },
    config = function()
      if Time > 7 and Time < 18 then
        vim.cmd.colorscheme 'catppuccin-macchiato'
      end
    end,
  },

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
