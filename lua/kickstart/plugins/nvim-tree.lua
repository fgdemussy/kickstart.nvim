local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- Set '?' to toggle help
  vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      on_attach = my_on_attach,
      view = {
        side = 'right',
      },
    }
    vim.keymap.set('n', '<leader>b', ':NvimTreeFindFile<CR>', { desc = '[b] Open tree', noremap = true })
    vim.keymap.set('n', '<leader>b', ':NvimTreeFindFile<CR>', { desc = '[b] Open tree', noremap = true })
  end,
}
