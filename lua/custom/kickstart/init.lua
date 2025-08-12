local dir = 'custom.kickstart.'
return {
  { 'NMAC427/guess-indent.nvim' },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  require(dir .. 'gitsigns'),
  require(dir .. 'which-key'),
  require(dir .. 'lazydev'),
  require(dir .. 'telescope'),
  require(dir .. 'nvim-lspconfig'),
  require(dir .. 'nvim-lint'),
  require(dir .. 'conform'),
  require(dir .. 'blink-cmp'),
  -- require(dir .. 'nvim-cmp'),
  require(dir .. 'mini'),
  require(dir .. 'nvim-treesitter'),
}
