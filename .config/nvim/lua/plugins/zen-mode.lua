return {
    "folke/zen-mode.nvim",
    dependencies = {
        {
            "folke/twilight.nvim",
            opts = {
                dimming = {
                    alpha = 0.1
                }
            }
        },
        {
            "preservim/vim-pencil",
            config = function()
                vim.keymap.set("n", "<leader>z", "<CMD>lua require('zen-mode').toggle()<CR>", {silent = true})
                vim.keymap.set("n", "<leader>p", "<CMD>ZenMode | TogglePencil<CR>", {silent = true})
            end
        }
    },
    opts = {
        window = {
            backdrop = 1,
            height = 1,
            width = 1
        },
        plugins = {
            tmux = { enabled = true }
        }
    }
}
