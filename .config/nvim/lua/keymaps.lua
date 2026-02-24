-- define common options
local opts = {
    noremap = true,
    silent = true,
}

-- Use `:h vim.map.set()` for help

keymap = vim.keymap

-------------------
--- Normal mode ---
-------------------

keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Neotree
keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', opts)

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files)
keymap.set('n', '<leader>fg', builtin.live_grep)
keymap.set('n', '<leader>fb', builtin.buffers)
keymap.set('n', '<leader>fh', builtin.help_tags)


-------------------
--- Visual mode ---
-------------------

-- Re-enter visual mode after `<` or `>`
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)
