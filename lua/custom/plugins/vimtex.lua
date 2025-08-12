return {
  'lervag/vimtex',
  lazy = false,

  config = function()
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_compiler_method = 'latexmk'
  end,
}
