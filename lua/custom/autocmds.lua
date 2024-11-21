-- vim.api.nvim_create_autocmd('BufWritePre', {

--   pattern = '*',
--   callback = function(args)
--     require('conform').format { bufnr = args.buf }
--   end,
-- })

vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Open the file tree if nothing is entered as a command',
  group = vim.api.nvim_create_augroup('nvim-tree-open-no-args', { clear = true }),
  callback = function()
    if #vim.v.argv == 2 then
      vim.cmd 'NvimTreeOpen'
    end
  end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
  desc = 'Automatically format buffer on write',
  group = vim.api.nvim_create_augroup('nvim-auto-format', { clear = true }),
  callback = function()
    require('conform').format { async = true, lsp_fallback = true }
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  desc = 'Change tabstop and shiftwidth when using glsl and python files',
  callback = function()
    if vim.bo.filetype == 'glsl' then
      vim.opt_local['shiftwidth'] = 4
      vim.opt_local['tabstop'] = 4
    end
  end,
})
