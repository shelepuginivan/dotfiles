local neovim = {
    "╔══════════════════════════════════════════════════════╗",
    "                                                        ",
    "   ▀█▄   ▀█▀                           ██               ",
    "    █▀█   █    ▄▄▄▄    ▄▄▄   ▄▄▄▄ ▄▄▄ ▄▄▄  ▄▄ ▄▄ ▄▄     ",
    "    █ ▀█▄ █  ▄█▄▄▄██ ▄█  ▀█▄  ▀█▄  █   ██   ██ ██ ██    ",
    "    █   ███  ██      ██   ██   ▀█▄█    ██   ██ ██ ██    ",
    "   ▄█▄   ▀█   ▀█▄▄▄▀  ▀█▄▄█▀    ▀█    ▄██▄ ▄██ ██ ██▄   ",
    "                                                        ",
    "╚══════════════════════════════════════════════════════╝",
}

-- One of these quotes is chosen randomly. Can be multi-line.
local quotes = {
    { "Hello Hello Hello Hello Hello Hello!" },
    { "Look! Sanae-san is right behind you!!" },
    { "Will there ever be a place for the broken in the light?" },
    { "Stay hydrated" },
    { "In the name of Love and Justice~ Here comes Magical Girl!" },
}

require("startup").setup({
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = neovim,
        highlight = "Text",
        default_color = "",
        oldfiles_amount = 0,
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find file", "Telescope find_files", "f" },
            { " Live grep", "Telescope live_grep", "g" },
            { " Open tree", "Neotree show position=current", "t" },
            { " Quit nvim", "qa", "q" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = quotes[math.random(#quotes)],
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 4, 2, 1, 2 },
    },
    mappings = {
        execute_command = "<CR>",
    },
    parts = { "header", "body", "footer" },
})
