require("config.lazy")
require("options")

local map = vim.api.nvim_set_keymap

vim.cmd 'colorscheme catppuccin-mocha '

vim.diagnostic.config({ virtual_text = false })

vim.o.updatetime = 100
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})


-- Exiting terminal mod
map('t', '<Esc>', '<C-\\><C-n><CR>', { noremap = true, silent = true })

-- Telescope bindings
map('n', '<leader>n', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
map('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Barbar bindings
map('n', '<leader>x', ':BufferClose<CR>', { noremap = true, silent = true })
map('n', '<C-tab>', ':BufferNext<CR>', { noremap = true, silent = true })
map('n', '<C-S-tab>', ':BufferPrevious<CR>', { noremap = true, silent = true })

