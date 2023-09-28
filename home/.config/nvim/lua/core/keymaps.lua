local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- set leader key to space
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- control + arrow keys to navigate windows
keymap('n', '<c-down>', '<c-w><c-j>', opts)
keymap('n', '<c-up>', '<c-w><c-k>', opts)
keymap('n', '<c-right>', '<c-w><c-l>', opts)
keymap('n', '<c-left>', '<c-w><c-h>', opts)

-- control + shift + arrow keys to resize windows
keymap('n', '<c-s-down>', ':resize +2<CR>', opts)
keymap('n', '<c-s-up>', ':resize -2<CR>', opts)
keymap('n', '<c-s-left>', ':vertical resize -2<CR>', opts)
keymap('n', '<c-s-right>', ':vertical resize +2<CR>', opts)

-- easier writing
keymap('n', '<c-w>', ':w<CR>')
keymap('n', '<c-x>', ':x<CR>')
keymap('n', '<c-q>', ':q<CR>')
keymap('n', '<leader>q', ':q!<CR>')

-- easier inserting
keymap('n', 'q', 'i')

-- celluar automation
keymap('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>')

-- indent easily
keymap('v', '<c-left>', '<gv', opts)
keymap('v', '<c-right>', '>gv', opts)

-- move text up and down
keymap('v', '<c-up>', ':m .-2<CR>gv', opts)
keymap('v', '<c-down>', ':m .+2<CR>gv', opts)

-- better yanking ;p
keymap('v', 'p', '"_dP', opts)
