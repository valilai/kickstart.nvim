vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Tmux keybindings
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight <cmd>', { desc = 'TMUX: Move focus to the left window' })
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft <cmd>', { desc = 'TMUX: Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown <cmd>', { desc = 'TMUX: Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateUp <cmd>', { desc = 'TMUX: Move focus to the upper window' })

-- Show LSP Diagnostic
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Map jj to Esc to get LSP infos correct' })

-- Movements in insert
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Move left window in insert' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Move right window in insert' })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down in insert' })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up in insert' })
vim.keymap.set('i', '<C-e>', '<End>', { desc = 'Move up in insert' })
vim.keymap.set('i', '<C-i>', '<Esc>^i', { desc = 'Move up in insert' })

-- Molten-nvim
vim.keymap.set('n', '<localleader>mi', ':MoltenInit<CR>', { silent = true, desc = '[Molten] Initialize the plugin' })
vim.keymap.set('n', '<localleader>me', ':MoltenEvaluateOperator<CR>', { silent = true, desc = '[Molten] run operator selection' })
vim.keymap.set('n', '<localleader>mrl', ':MoltenEvaluateLine<CR>', { silent = true, desc = '[Molten] evaluate line' })
vim.keymap.set('n', '<localleader>mrr', ':MoltenReevaluateCell<CR>', { silent = true, desc = '[Molten] re-evaluate cell' })
vim.keymap.set('v', '<localleader>mr', ':<C-u>MoltenEvaluateVisual<CR>gv', { silent = true, desc = '[Molten] evaluate visual selection' })
vim.keymap.set('n', '<localleader>mrd', ':MoltenDelete<CR>', { silent = true, desc = '[Molten] delete cell' })
vim.keymap.set('n', '<localleader>moh', ':MoltenHideOutput<CR>', { silent = true, desc = '[Molten] hide output' })
vim.keymap.set('n', '<localleader>mos', ':noautocmd MoltenEnterOutput<CR>', { silent = true, desc = '[Molten] show/enter output' })

-- Harpoon keymaps: lua/plugins.lua
-- Neogen
vim.keymap.set('n', '<leader>nf', ":lua require('neogen').generate()<CR>", { desc = '[Neogen] Generate annotation' })
