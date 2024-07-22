return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
        theme = 'catppuccin',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'buffers' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { 'branch', 'diff', 'diagnostics' },
        lualine_z = {},
      },
    }
  end,
}
