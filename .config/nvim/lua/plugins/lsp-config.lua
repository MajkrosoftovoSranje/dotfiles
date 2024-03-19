-- mason.nvim
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
-- mason-lspconfig.nvim
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer"
                }
            })
        end
    },
-- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- language servers
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {}
            lspconfig.clangd.setup {}
            -- local mappings
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf }
                    vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set({ "n", "v" }, '<leader>ca', vim.lsp.buf.code_action, opts)
                end,
            })
        end
    }
}
