require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "",
    default_component_configs = {
        git_status = {
            symbols = {
                ignored = "",
                unstaged = "󰄱",
                staged = "",
                untracked = "",
                deleted = "",
                conflict = "",
            },
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            default = "*",
            highlight = "NeoTreeFileIcon",
        },
    },
    event_handlers = {
        {
            event = "file_open_requested",
            handler = function()
                require("neo-tree.command").execute({ action = "close" })
            end,
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
        },
    },
    window = {
        position = "right",
        width = 40,

        mappings = {
            ["f"] = "noop",
        },
    },
})
