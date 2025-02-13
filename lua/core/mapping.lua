vim.g.mapleader=" "

vim.keymap.set('n','<C-n>',':CocCommand explorer --toggle --content-width 30 --content-width-type min-width<CR>')

vim.keymap.set('n','<C-s>',':w<CR>')
vim.keymap.set('n','<C-q>',':q!<CR>')

vim.keymap.set('i','<C-s>','<ESC>:w<CR>')
vim.keymap.set('i','<C-q>','<ESC>:q!<CR>')

vim.keymap.set('n','<C-z>',':u<CR>')
vim.keymap.set('n','<S-z>',':redo<CR>')
vim.keymap.set('n','<C-a>',':Autopep8<CR>')
vim.keymap.set('n','<C-r>',':w<CR>:!python3 %:p<CR>') 

vim.keymap.set('i','fg','<ESC>')
vim.keymap.set('n','fg','<INSERT>')

vim.keymap.set('i','C-v','<ESC>')

vim.keymap.set('n', "<F2>", ":set number!<CR>")
vim.keymap.set('i', "<F2>", "<ESC> :set number!<CR>")

vim.keymap.set('n', "<F8>", ":TagbarToggle<CR>")
vim.keymap.set('i', "<F8>", "<ESC> :TagbarToggle<CR>")
