return {
    {
        "stevearc/oil.nvim",
        opts = {},
        config = function()
            require("oil").setup({
                view_options = { show_hidden = true },
            })
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
            vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
        end
    }
}
