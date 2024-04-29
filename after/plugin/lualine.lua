local git_blame = require('gitblame')
-- Disable blame text next to cursor
vim.g.gitblame_display_virtual_text = 0

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = require('monoald.theme.lualinecolors').theme(),
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'location'},
    lualine_c = { { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
    lualine_x = {'fileformat'},
    lualine_y = {'filetype'},
    lualine_z = {'hostname'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
tabline = {
  lualine_a = {'buffers'},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {'diff', 'diagnostics'},
  lualine_z = {'branch'}
},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
