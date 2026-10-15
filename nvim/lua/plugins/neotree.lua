return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true, 
            window = {
                position = "left",
                width = 30,
                mappings = {
                    ["<space>"] = "none", 
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true, 
                    hide_dotfiles = false,
                    hide_hidden = false,
                },
                follow_current_file = {
                    enabled = true,
                },
            },
        })

        vim.keymap.set('n', '<leader>cd', '<cmd>Neotree toggle<cr>', { desc = "Toggle File Explorer" })
    end,
}
