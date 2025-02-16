vim.g.mapleader=" "

vim.keymap.set('n','<C-n>','<cmd>Neotree toggle<CR>')

vim.keymap.set('n','<C-s>','<cmd>w!<CR>')
vim.keymap.set('n','<C-q>','<cmd>q!<CR>')

vim.keymap.set('i','<C-s>','<cmd>w!<CR>')
vim.keymap.set('i','<C-q>','<cmd>q!<CR>')

vim.keymap.set('n','<C-a>','<cmd>Autopep8<CR>')

vim.keymap.set('n', "<F8>", "<cmd>TagbarToggle<CR>")

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
vim.keymap.set('n', "f", '<cmd>FloatermToggle<CR>', {noremap = true})
