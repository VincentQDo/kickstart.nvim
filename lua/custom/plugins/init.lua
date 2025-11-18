-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
local opt = vim.opt
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.mouse = ''

vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>rn', function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = 'Toggle [r]elative [n]umber' })

-- Visual surround with mini.surround using `s`
vim.keymap.set('v', 's', [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true, desc = 'Add surround (visual)' })
return {}
