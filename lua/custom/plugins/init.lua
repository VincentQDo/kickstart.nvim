-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
local opt = vim.opt
local builtin = require 'telescope.builtin'
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.mouse = ''

vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>rn', function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = 'Toggle [r]elative [n]umber' })

-- File symbols
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {
  desc = '[D]ocument [S]ymbols',
})

-- Workspace symbols
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, {
  desc = '[W]orkspace [S]ymbols',
})

-- Visual surround with mini.surround using `s`
vim.keymap.set('v', 's', [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true, desc = 'Add surround (visual)' })

return {
  {
    'stevearc/conform.nvim',
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      opts.formatters_by_ft.svelte = { 'prettier' }
      opts.formatters_by_ft.javascript = { 'prettier' }
      opts.formatters_by_ft.typescript = { 'prettier' }
      opts.formatters_by_ft.javascriptreact = { 'prettier' }
      opts.formatters_by_ft.typescriptreact = { 'prettier' }
      opts.formatters_by_ft.css = { 'prettier' }
      opts.formatters_by_ft.html = { 'prettier' }
      opts.formatters_by_ft.json = { 'prettier' }

      return opts
    end,
  },
}
