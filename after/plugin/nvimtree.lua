local nvimtree = require('nvim-tree')
nvimtree.setup()

local api = require 'nvim-tree.api'

vim.keymap.set('n', '<leader>pv', api.tree.toggle)
vim.keymap.set('n', '<leader>pf', function()
  if api.tree.is_visible() then
    api.tree.find_file({ focus = true })
  else
    api.tree.toggle({ path = "<args>", update_root = false, find_file = true, focus = true, })
  end
end)

