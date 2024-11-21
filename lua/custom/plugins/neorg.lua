return {
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
}
