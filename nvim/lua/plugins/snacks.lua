return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        picker = { enabled = true },
	dashboard = { enabled = true },
	indent = { enabled = true },
	scroll = { enabled = true },
    },
    keys = {
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "Live Grep" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    },
}
