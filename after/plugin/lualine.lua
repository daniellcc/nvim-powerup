require('lualine').setup({
  options = {
    -- theme = "vscode",
    theme = "nord",
    component_separators = {'', ''},
    section_separators = {'', ''},
  },
  sections = {
    lualine_a = {'branch', {
      -- color_added = 'green',
      -- color_modified = 'yellow',
      -- color_removed = 'red'
    }},
    lualine_b = {{'filename', path = 2}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
})
