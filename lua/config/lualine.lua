require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = 'horizon',
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
      lualine_b = {'branch', 'diff'},
      lualine_c = {'filetype'},
      lualine_x = {
        {
          'diagnostics',

          sources = { 'nvim_diagnostic', 'coc' },

          sections = { 'error', 'warn', 'info', 'hint' },

          diagnostics_color = {
            error = 'DiagnosticError',
            warn  = 'DiagnosticWarn',
            info  = 'DiagnosticInfo',
            hint  = 'DiagnosticHint',
          },
          symbols = {error = '!', warn = '#', info = '+', hint = 'H'},
          colored = true,           
          update_in_insert = false, 
          always_visible = false, 
      }
    },
      lualine_y = {'filename'},
      lualine_z = {'location'}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
