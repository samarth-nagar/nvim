-- NOTE: diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

-- NOTE: terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- NOTE: terminal
vim.api.nvim_set_keymap('n', '<leader>tt', ':term <CR>',
  { noremap = true, silent = true })

-- NOTE: word keymaps
vim.keymap.set({ 'n' }, 'dw', 'diw', { silent = true })
vim.keymap.set({ 'n' }, 'yw', 'yiw', { silent = true })
vim.keymap.set({ 'n' }, 'cw', 'ciw', { silent = true })

vim.keymap.set({ 'n' }, 'vv', 'V', { silent = true })
vim.keymap.set({ 'i' }, 'jj', '<Esc>', { silent = true })
vim.keymap.set({ 'n' }, '<Esc><Esc>', ':nohlsearch <CR>', { silent = true })
-- NOTE: cursor
vim.api.nvim_set_keymap('n', 'E', '$', { noremap = true })
vim.api.nvim_set_keymap('n', 'B', '0', { noremap = true })
-- NOTE: movement
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


--NOTE: window keymaps
vim.api.nvim_set_keymap('n', '<leader>tv', ':vnew <CR>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ts', ':new <CR>',
  { noremap = true, silent = true })

-- NOTE: plugin keymaps
vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<cr>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "=z", ":ZenMode<cr>",
  { noremap = true, silent = true })
-- for trouble
vim.api.nvim_set_keymap('n', '=q', ':TroubleToggle<CR>',
  { noremap = true, silent = true })
-- for nvim-tree
vim.api.nvim_set_keymap('n', '=e', ':NvimTreeToggle<CR>',
  { noremap = true, silent = true })


--
