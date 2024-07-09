vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Open the file tree if nothing is entered as a command',
  group = vim.api.nvim_create_augroup('nvim-tree-open-no-args', { clear = true }),
  callback = function()
    if #vim.v.argv == 2 then
      vim.cmd 'NvimTreeOpen'
    end
  end,
})
