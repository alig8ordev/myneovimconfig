return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.install({
            "lua", "vim", "vimdoc", "markdown", "markdown_inline",
            "tsx", "typescript", "python", "html", "css",
            "javascript", "java", "go", "c", "cpp", "rust",
            "bash", "json", "yaml", "toml",
        })
    end
}
