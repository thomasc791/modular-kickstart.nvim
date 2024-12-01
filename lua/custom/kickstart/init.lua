local dir = 'custom.kickstart.'
return {
  require(dir .. 'gitsigns'),
  require(dir .. 'which-key'),
  require(dir .. 'lazydev'),
  require(dir .. 'telescope'),
  require(dir .. 'nvim-lspconfig'),
  require(dir .. 'conform'),
  require(dir .. 'nvim-cmp'),
  require(dir .. 'mini'),
  require(dir .. 'nvim-treesitter'),
}
