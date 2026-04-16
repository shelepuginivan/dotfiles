local c = vim.g.colors

require("lualine").setup({
    options = {
        component_separators = "|",
        section_separators = { left = nil, right = nil },
        globalstatus = true,
        theme = {
            normal = {
                a = { bg = c.gray_2, fg = c.fg },
                b = { bg = c.gray_1, fg = c.fg },
                c = { bg = c.gray_0, fg = c.fg },
            },
            insert = {
                a = { bg = c.green, fg = c.gray_1 },
            },
            delete = {
                a = { bg = c.red, fg = c.gray_1 },
            },
            replace = {
                a = { bg = c.yellow, fg = c.gray_1 },
            },
            visual = {
                a = { bg = c.orange, fg = c.gray_1 },
            },
        },
    },
    disabled_filetypes = {
        statusline = { "startup", "neo-tree" },
    },
    sections = {
        lualine_b = {
            { "branch", icon = "" },
            "diff",
            "diagnostics",
        },
    },
})
