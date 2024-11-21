local dir = 'custom.plugins.'
return {

  'catppuccin/nvim',

  {
    'tanvirtin/monokai.nvim',
    name = 'monokai',
  },

  'folke/tokyonight.nvim',

  require(dir .. 'gruvbox'),
  require(dir .. 'neorg'),
  require(dir .. 'nvim-tree'),
  require(dir .. 'nvim-ufo'),
  require(dir .. 'undotree'),
}
