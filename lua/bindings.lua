map = vim.api.nvim_set_keymap

vim.g.mapleader = " "


--simple control-c
vim.keymap.set('i','<C-c>','<Esc>')
map('n', ';f', ':Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
map('n', '<Leader>[', ':vertical resize +7<CR>', { noremap = true, silent = true })
map('n', '<Leader>]', ':vertical resize -7<CR>', { noremap = true, silent = true })
map('n', '<Leader>cc', ':ColorizerToggle<CR>', { noremap = true, silent = true })

map('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })


map('n', '<Leader>n', ':NvimTreeToggle<CR>', {silent = true })

