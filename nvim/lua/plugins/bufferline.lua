return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            mode = "buffers",
            separator_style = "slant",
            show_buffer_close_icons = true,
            show_close_icon = true,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left",
                    separator = true,
                },
            },
            custom_filter = function(buf_number, buf_numbers)
                if vim.bo[buf_number].filetype == "neo-tree" then
                    return false
                end
                return true
            end,
        },
    },
    keys = {
        { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer Tab" },
        { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer Tab" },
        { "[b",    "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer Tab" },
        { "]b",    "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer Tab" },
        { "<A-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move Tab Left" },
        { "<A-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move Tab Right" },
        { "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Go to Tab 1" },
        { "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Go to Tab 2" },
        { "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Go to Tab 3" },
        { "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Go to Tab 4" },
        { "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Go to Tab 5" },
        { "<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle Pin Buffer" },
        { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close Other Buffers" }, 
    },
}
