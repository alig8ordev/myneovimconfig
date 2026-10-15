return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "clangd",
                "rust_analyzer",
                "ts_ls",
                "gopls",
                "bashls",
                "jsonls",
                "yamlls",
                "taplo",
                "jdtls",
            },
        },
        config = function(_, opts)
            require("mason").setup()
            require("mason-lspconfig").setup(opts)

            local capabilities = require('blink.cmp').get_lsp_capabilities()
            vim.lsp.config('*', {
                capabilities = capabilities,
            })
        end,
    },

    {
        "saghen/blink.cmp",
        version = '1.*',
        dependencies = { "rafamadriz/friendly-snippets" },
        opts = {
            keymap = {
                preset = 'enter',
                ['<Tab>']   = { 'select_next', 'snippet_forward', 'fallback' },
                ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
            },

            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant = 'mono',
            },

            completion = {
                documentation = { auto_show = true, auto_show_delay_ms = 150 },
                ghost_text = { enabled = true },
            },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
        },
        opts_extend = { "sources.default" },
    },
}
