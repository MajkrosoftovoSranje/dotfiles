return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>.", function() builtin.find_files( { cwd = vim.fn.expand('%:p:h') }) end, {})
            vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
            vim.keymap.set("n", "<leader>fg", function() builtin.live_grep( { cwd = vim.fn.expand('%:p:h') }) end, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
            require ("telescope").setup {
                defaults = {
                    vimgrep_arguments = {
                      "rg",
                      "--color=never",
                      "--no-heading",
                      "--with-filename",
                      "--line-number",
                      "--column",
                      "--smart-case",
                      "--hidden"
                    },
                    file_ignore_patterns = {
                        "Games", ".var", ".local", ".cache", ".themes", ".dbus"
                    },
                    preview = {
                        filesize_limit = 0.1, -- MB
                    },
                    mappings = {
                        i = {
                            ["<C-u>"] = false
                        }
                    }
                },
                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
                    },
                    buffers = {
                        mappings = {
                            i = {
                                ["<c-r>"] = require("telescope.actions").delete_buffer + require("telescope.actions").move_to_top
                            }
                        }
                    }
                },
                extensions = {
                    fzf = {
                        case_mode = "ignore_case"
                    },
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = vim.fn.executable("make") == 1,
        config = function()
            require("telescope").load_extension("fzf")
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim"
    }
}
