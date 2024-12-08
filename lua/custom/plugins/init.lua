local dir = 'custom.plugins.'
return {
  require(dir .. 'colorschemes'),
  require(dir .. 'neorg'),
  require(dir .. 'nvim-tree'),
  require(dir .. 'nvim-ufo'),
  require(dir .. 'undotree'),
  require(dir .. 'vimtex'),
  require(dir .. 'tiny-inline-diagnostic'),
}
