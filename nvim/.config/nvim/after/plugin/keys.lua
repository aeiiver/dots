local bind = require('nahida.utils').bind

-- fuzzy finder (Telescope)
local tlscp_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tlscp_builtin.find_files)
vim.keymap.set('n', '<leader>fg', tlscp_builtin.live_grep)
vim.keymap.set('n', '<leader>fb', tlscp_builtin.buffers)
vim.keymap.set('n', '<leader>fh', tlscp_builtin.help_tags)

-- undo tree
bind('n', '<leader>u', '<cmd>UndotreeToggle<CR>')
