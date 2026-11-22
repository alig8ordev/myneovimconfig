return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        delay = 300,
        plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
            },
            presets = {
                operators = true,
                motions = true,
                text_objects = true,
                windows = true,
                nav = true,
                z = true,
                g = true,
            },
        },
    },
}
