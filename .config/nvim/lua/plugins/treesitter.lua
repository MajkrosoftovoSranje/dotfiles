return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "diff",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "org",
                    "python",
                    "rust",
                    "sql",
                    "vim",
                    "vimdoc"
                },
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "org" }
                },
                indent = {
                    enable = true,
                    disable = { "org" }
                }
            })
        end
    },
    {
        "luckasRanarison/tree-sitter-hyprlang",
    }
}
