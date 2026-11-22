vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, vim.tbl_extend('force', opts, { desc = "Go to Definition" }))
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, vim.tbl_extend('force', opts, { desc = "Hover Documentation" }))
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, vim.tbl_extend('force', opts, { desc = "Smart Rename" }))
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, vim.tbl_extend('force', opts, { desc = "Code Action" }))
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, vim.tbl_extend('force', opts, { desc = "Show References" }))
    end,
})

vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = "Save File" })
vim.keymap.set('n', '<leader>q', '<cmd>bd<cr>', { desc = "Close Buffer" })
