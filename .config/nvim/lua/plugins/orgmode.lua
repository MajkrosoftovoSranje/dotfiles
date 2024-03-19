return {
    {
        'nvim-orgmode/orgmode',
        event = 'VeryLazy',
        dependencies = {
            'danilshvalov/org-modern.nvim',
            lazy = true,
            event = 'VeryLazy'
        },
        config = function()
            require('orgmode').setup_ts_grammar()
            local Menu = require("org-modern.menu")
            require('orgmode').setup({
                org_agenda_files = '~/Documents/Notes/**/*',
                org_default_notes_file = '~/Documents/Notes/refile.org',
                org_startup_indented = "noindent",
                ui = {
                    menu = {
                        handler = function(data)
                            Menu:new({
                                window = {
                                    margin = { 1, 0, 1, 0 },
                                    padding = { 0, 1, 0, 1 },
                                    title_pos = "center",
                                    border = "single",
                                    zindex = 1000,
                                },
                                icons = {
                                    separator = "➜"
                                }
                            }):open(data)
                        end
                    }
                }
            })
            -- Mappings
            vim.keymap.set("n", "<leader>od", function() vim.api.nvim_set_current_dir(vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':h')) end, { silent = true })
            vim.keymap.set("n", "<F2>", "i#+PROPERTY: header-args :tangle ", { silent = true })
            vim.keymap.set("n", "<leader>os", "i#+BEGIN_SRC <CR>#+END_SRC<esc>k$a", { silent = true })
            vim.keymap.set("n", "<leader>og", "<CMD>!logseq > /dev/null 2>&1<CR>", {silent = true})
            -- Menu
        end
    },
    {
        'akinsho/org-bullets.nvim',
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('org-bullets').setup({
                concealcursor = true,
                symbols = {
                    checkboxes = {
                        half = { "○", "OrgTSCheckboxHalfChecked" }
                    }
                }
            })
        end
    },
    {
        'andreadev-it/orgmode-multi-key',
        config = function()
            require('orgmode-multi-key').setup()
        end
    },
    {
        "lukas-reineke/headlines.nvim",
        config = function()
            require("headlines").setup({
                org = {
                    headline_highlights = { "Headline1", "Headline2" },
                    codeblock_highlight = "CodeBlock",
                    quote_highlight = "Quote",
                    quote_string = "┃",
                    fat_headlines = false
                },
                markdown = {
                    fat_headlines = false
                }
            })
            vim.cmd [[highlight Headline1 guibg=#313244]]
            --vim.cmd [[highlight Headline2 guibg=#21262d]]
            vim.cmd [[highlight CodeBlock guibg=#181825]]
        end
    },
    {
        "jubnzv/mdeval.nvim",
        event = "VeryLazy",
        config = function()
            require("mdeval").setup({
                require_confirmation=false,
                eval_options = {}
            })
            vim.keymap.set("n", "<leader>ce", "<CMD>lua require 'mdeval'.eval_code_block()<CR>", { silent = true })
        end
    },
    {
        "ranjithshegde/orgWiki.nvim",
        keys = "<leader>ow",
        config = function()
            require("orgWiki").setup {
                wiki_path = { "~/Documents/Notes/pages/" },
                diary_path = "~/Documents/Notes/journals/",
            }
        end
    },
    {
        "dhruvasagar/vim-table-mode",
        config = function()
            vim.keymap.set("n", "<leader>tm", ":TableModeToggle<CR>", { silent = true })
            vim.keymap.set("n", "<leader>tf", ":TableAddFormula<CR>", { silent = true })
            vim.keymap.set("n", "<leader>te", ":TableEvalFormulaLine<CR>", { silent = true })
        end
    }
}
