return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<c-h>", "<cmd><C-d>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-d>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-d>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-d>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-d>TmuxNavigatePrevious<cr>" },
    },
}
