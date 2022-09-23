local map_keybind = function(mode, key, result)
    vim.api.nvim_set_keymap(
        mode,
        key,
        result,
        {noremap = true, silent = true}
    )
end

-- open explorer
map_keybind('n', '<leader><leader>r', '<cmd>Rex<CR>')

-- open file change history
map_keybind('n', '<leader><leader>hist', '<cmd>LocalHistoryToggle<CR>')

-- fuzzy finder
map_keybind('n', '<leader><leader>ff', '<cmd>Telescope find_files<CR>')
map_keybind('n', '<leader><leader>fb', '<cmd>Telescope buffers<CR>')

-- move lines
map_keybind('n', '<M-j>', ':m .+1<CR>==')
map_keybind('n', '<M-k>', ':m .-2<CR>==')
map_keybind('i', '<M-j>', '<Esc>:m .+1<CR>==gi')
map_keybind('i', '<M-k>', '<Esc>:m .-2<CR>==gi')
map_keybind('v', '<M-j>', ":m '>+1<CR>gv=gv")
map_keybind('v', '<M-k>', ":m '<-2<CR>gv=gv")

-- duplicate lines
map_keybind('n', '<S-M-j>', ':co .<CR>==')
map_keybind('n', '<S-M-k>', ':co .-1<CR>==')
map_keybind('i', '<S-M-j>', '<Esc>:co .<CR>==gi')
map_keybind('i', '<S-M-k>', '<Esc>:co .-1<CR>==gi')
map_keybind('v', '<S-M-j>', ":co '<-1<CR>gv=gv")
map_keybind('v', '<S-M-k>', ":co '><CR>gv=gv")

-- disable abuse of arrow keys
map_keybind('n', '<up>', '<nop>')
map_keybind('n', '<down>', '<nop>')
map_keybind('n', '<left>', '<nop>')
map_keybind('n', '<right>', '<nop>')
