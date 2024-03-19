vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Map Ctrl-h to move cursor left in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })

-- Map Ctrl-l to move cursor right in insert mode
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })

-- Map Ctrl-j to move cursor down in insert mode
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })

-- Map Ctrl-k to move cursor up in insert mode
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })

vim.keymap.set({ 'n', 'v' }, '<M-q>', ':q<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<c-Q>', ':qa!<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR> ', { silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':bdelete<CR>', { noremap = true, silent = true })

-- my scripts wont work on your unless you copy my .zsh repo
vim.api.nvim_set_keymap('n', '<M-t>', ':! ctp <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-r>', ':! run <CR>', { noremap = true })

vim.keymap.set('n', '<C-d>', "<c-d>zz")
vim.keymap.set('n', '<C-u>', "<c-u>zz")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
