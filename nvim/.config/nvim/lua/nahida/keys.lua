local bind = function(mode, key, result)
    vim.api.nvim_set_keymap(
        mode,
        key,
        result,
        {noremap = true, silent = true}
    )
end

-- open netrw
bind('n', '<leader>r', '<cmd>Ex<CR>')

-- open file change history (Local history)
bind('n', '<leader>h', '<cmd>LocalHistoryToggle<CR>')

-- fuzzy finder (Telescope)
bind('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
bind('n', '<leader>fb', '<cmd>Telescope buffers<CR>')

-- move lines
bind('n', '<M-j>', ':m .+1<CR>==')
bind('n', '<M-k>', ':m .-2<CR>==')
bind('i', '<M-j>', '<Esc>:m .+1<CR>==gi')
bind('i', '<M-k>', '<Esc>:m .-2<CR>==gi')
bind('v', '<M-j>', ":m '>+1<CR>gv=gv")
bind('v', '<M-k>', ":m '<-2<CR>gv=gv")

-- duplicate lines
bind('n', '<S-M-j>', ':co .<CR>==')
bind('n', '<S-M-k>', ':co .-1<CR>==')
bind('i', '<S-M-j>', '<Esc>:co .<CR>==gi')
bind('i', '<S-M-k>', '<Esc>:co .-1<CR>==gi')
bind('v', '<S-M-j>', ":co '<-1<CR>gv=gv")
bind('v', '<S-M-k>', ":co '><CR>gv=gv")
