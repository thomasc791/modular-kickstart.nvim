return {
  'ellisonleao/gruvbox.nvim',
  name = 'gruvbox',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'gruvbox'
    vim.cmd.hi 'Comment gui=none'
  end,
}
