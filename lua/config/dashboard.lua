local db = require("dashboard")

local logo = [[
      ██████╗ ███████╗██╗  ████████╗ █████╗ 
      ██╔══██╗██╔════╝██║  ╚══██╔══╝██╔══██╗
      ██║  ██║█████╗  ██║     ██║   ███████║
      ██║  ██║██╔══╝  ██║     ██║   ██╔══██║
      ██████╔╝███████╗███████╗██║   ██║  ██║
      ╚═════╝ ╚══════╝╚══════╝╚═╝   ╚═╝  ╚═╝
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

db.setup({
  theme = 'doom',
  config = {
    header = vim.split(logo, "\n"), --your header
    center = {
      {
        icon = '',
        icon_hl = 'Title',
        desc = ' Find File',
        key = 'f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = '',
        icon_hl = 'Title',
        desc = ' New File',
        key = 'n',
        key_hl = 'Number',
        action = 'enew'
      },
      {
        icon = '',
        icon_hl = 'Title',
        desc = ' Telescope',
        key = 't',
        key_hl = 'Number',
        action = 'Telescope'
      },
      {
        icon = '',
        icon_hl = 'Title',
        desc = ' Packages',
        key = 'p',
        key_hl = 'Number',
        action = 'Lazy'
      },
      {
        icon = '',
        icon_hl = 'Title',
        desc = ' Exit',
        key = 'q',
        key_hl = 'Number',
        action = function() vim.api.nvim_input("<cmd>qa<cr>") end
      },
    },
    footer = { "󰔶" } 
  }
})
