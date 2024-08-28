require('telescope').setup({
    defaults = {

        mappings = {
            n = {
                ["<C-c>"] = require('telescope.actions').close,
            },
            i = {
                ["<C-c>"] = require('telescope.actions').close,
            },

        },
    },
})


Builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>o', Builtin.oldfiles, { desc = 'old  opened files' })
vim.keymap.set('n', '<localleader>o', Builtin.oldfiles, { desc = 'old  opened files' })
-- vim.keymap.set('n', '<leader>fo', Builtin.oldfiles, { desc = 'search in buffers(the opened files rn)' })
vim.keymap.set('n', '<leader>ff', Builtin.find_files, { desc = 'find files' })
vim.keymap.set('n', '<leader><space>', Builtin.find_files, { desc = 'find files' })
vim.keymap.set('n', '<leader>fc', Builtin.colorscheme, { desc = 'colorscheme' })

vim.api.nvim_set_keymap('n', '<leader>a',
    [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]],
    { noremap = true, silent = true, desc = 'find in all files' })

vim.api.nvim_set_keymap('n', '<localleader>a',
    [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]],
    { noremap = true, silent = true, desc = 'find in all files' })

vim.api.nvim_set_keymap('n', '<leader>fa',
    [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]],
    { noremap = true, silent = true, desc = 'find in all files' })
----------------------------------------------------------------------------------------

-- move in out of your code base and shit
vim.keymap.set('n', '<leader>sj', Builtin.jumplist, { desc = 'find in jumplist' })
vim.keymap.set('n', '<leader>sq', Builtin.quickfix, { desc = 'find in quickfix' })
vim.keymap.set('n', '<leader>ss', Builtin.treesitter, { desc = 'search symbol in the buffer' })
vim.keymap.set('n', '<leader>sm', Builtin.marks, { desc = 'search marks' })
vim.keymap.set('n', '<leader>sm', Builtin.marks, { desc = 'search marks' })
vim.keymap.set('n', '<leader>sg', Builtin.live_grep, { desc = 'search by grep' })
vim.keymap.set('n', '<leader>sw', Builtin.grep_string, { desc = 'Search current Word' })

----------------------------------------------------------------------------------------

-- extra telescope
vim.keymap.set('n', '<leader>sc', Builtin.commands, { desc = 'search commands' })
vim.keymap.set('n', '<leader>sh', Builtin.help_tags, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>sk', Builtin.keymaps, { desc = 'Search Keymaps' })
vim.keymap.set('n', '<leader>st', Builtin.builtin, { desc = 'Search Telescope builtin' })
--resume last search
vim.keymap.set('n', '<leader>sr', Builtin.resume, { desc = 'Search Resume' })

----------------------------------------------------------------------------------------

-- git
vim.keymap.set('n', '<leader>gf', Builtin.git_files, { desc = 'Search git files' })

----------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>sd', function()
    Builtin.diagnostics(require('telescope.themes').get_dropdown {
        winblend = 0,
        previewer = true,
        layout_config = {
            width = 200,
            height = 15,
            prompt_position = 'top',
            mirror = true,
            anchor = 'N',
        },
    })
end, { desc = 'diagnostics' })

----------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    Builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 1,
        previewer = false,
        layout_config = {
            height = 20,
        }
    })
end, { desc = 'Fuzzily search in current buffer' })

vim.keymap.set('n', '<localleader>g', function()
    Builtin.live_grep(require('telescope.themes').get_dropdown {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
        winblend = 1,
        previewer = false,
        layout_config = {
            height = 20,
        }
    })
end, { desc = 'grep in file' })

----------------------------------------------------------------------------------------

vim.keymap.set('n', 'gw', function()
    Builtin.grep_string(require('telescope.themes').get_cursor {
        winblend = 1,
        previewer = true,
        layout_config = {
            height = 16,
            width = 100,
        }
    })
end, { desc = 'current word' })

----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>sg', function()
    Builtin.live_grep(require('telescope.themes').get_dropdown {
        winblend = 0,
        previewer = true,
        layout_config = {
            width = 120,
            height = 15,
            prompt_position = 'top',
            mirror = true,
            anchor = 'N',
        },
    })
end, { desc = 'grep in directory' })

----------------------------------------------------------------------------------------

vim.keymap.set('n', 'zs', function()
    Builtin.spell_suggest(require('telescope.themes').get_cursor {
        winblend = 0,
        previewer = true,
        layout_config = {
            width = 30,
            height = 15,
        }
    })
end, { desc = 'spell suggest' })

----------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>sn', function()
    Builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Neovim files' })

-- vim: ts=4 sts=4 sw=4 et
