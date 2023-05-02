-- :help lsp
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>m', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})
