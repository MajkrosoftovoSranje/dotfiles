return {
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true
    },
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = function()
            local logo = [[
 _   _  _____  _____  _   _  _____ ___  ___
| \ | ||  ___||  _  || | | ||_   _||  \/  |
|  \| || |__  | | | || | | |  | |  | .  . |
| . ` ||  __| | | | || | | |  | |  | |\/| |
| |\  || |___ \ \_/ /\ \_/ / _| |_ | |  | |
\_| \_/\____/  \___/  \___/  \___/ \_|  |_/
                             
                                                    
            ]]

            logo = string.rep("\n", 8) .. logo .. "\n\n"

            local opts = {
                theme = "doom",
                config = {
                    header = vim.split(logo, "\n"),
                    center = {
                        { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
                        { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
                        { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
                        { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
                        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
                        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
                    },
                    footer = function()
                        local stats = require("lazy").stats()
                        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                    end,
                },
            }

            for _, button in ipairs(opts.config.center) do
                button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
                button.key_format = "  %s"
            end

            -- close Lazy and re-open when the dashboard is ready
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    pattern = "DashboardLoaded",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            return opts
        end
    },
    -- {
    --     "folke/which-key.nvim",
    --     event = "VeryLazy",
    --     init = function()
    --         vim.o.timeout = true
    --         vim.o.timeoutlen = 900
    --     end,
    --     opts = {}
    -- },
    {
        "LunarVim/bigfile.nvim"
    }
}
