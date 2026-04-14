local colors = {
    fg = "#d9d8d8",
    bg = "#0f0d0c",
    none = "NONE",

    gray_0 = "#171514",
    gray_1 = "#282625",
    gray_2 = "#302e2e",
    gray_3 = "#494747",
    gray_4 = "#727171",
    gray_5 = "#999898",

    blue = "#7fbbb3",
    green = "#a7c080",
    orange = "#e69875",
    purple = "#d699b6",
    red = "#e67e80",
    yellow = "#dbbc7f",
}

vim.o.termguicolors = true
vim.g.transparent_enabled = true

local highlights = {
    Visual = { bg = colors.gray_3 },
    Pmenu = { bg = colors.gray_1 },
    PmenuSel = { bg = colors.gray_3 },

    Comment = { fg = colors.gray_4, italic = true },
    Identifier = { fg = colors.fg },
    Keyword = { fg = colors.red },
    Statement = { fg = colors.red },
    String = { fg = colors.green },
    Special = { fg = colors.fg },
    Boolean = { fg = colors.purple },
    Number = { fg = colors.purple },
    Function = { fg = colors.yellow },
    PreProc = { fg = colors.red },
    Type = { fg = colors.yellow },
    Constant = { fg = colors.purple },

    Directory = { fg = colors.green, bold = true },
    MoreMsg = { fg = colors.blue },
    Question = { fg = colors.yellow, bold = true },

    TSField = { fg = colors.blue },

    -- git
    gitcommitBranch = { fg = colors.purple },
    gitcommitHeader = { fg = colors.fg },
    diffLine = { fg = colors.orange, bold = true },
    diffRemoved = { fg = colors.red },
    diffAdded = { fg = colors.green },
    diffIndexLine = { fg = colors.orange, bold = true },

    -- Go
    goFormatSpecifier = { fg = colors.orange },
    goBuiltins = { fg = colors.orange },
    goEscapeC = { fg = colors.orange },

    -- Markup
    ["@markup.list"] = { fg = colors.red },
    ["@markup.raw"] = { fg = colors.gray_5 },
    ["@markup.heading.1.markdown"] = { fg = colors.green, bold = true },
    ["@markup.heading.2.markdown"] = { fg = colors.green, bold = true },
    ["@markup.heading.3.markdown"] = { fg = colors.yellow, bold = true },
    ["@markup.heading.4.markdown"] = { fg = colors.yellow, bold = true },
    ["@punctuation.special.markdown"] = { fg = colors.red },
    ["@string.escape"] = { fg = colors.orange },

    -- Configuration
    tomlTable = { fg = colors.yellow, bold = true },
    tomlTableArray = { fg = colors.yellow, bold = true },
    yamlBlockString = { fg = colors.green },
    yamlBlockScalarHeader = { fg = colors.red },

    -- Telescope
    TelescopeNormal = { bg = colors.gray_1 },
    TelescopeSelection = { bg = colors.none, fg = colors.red },
    TelescopeMatching = { fg = colors.yellow },
    TelescopeResultsBorder = { bg = colors.gray_1, fg = colors.gray_1 },
    TelescopeResultsTitle = { bg = colors.red, fg = colors.gray_1, bold = true },
    TelescopePromptNormal = { bg = colors.gray_2 },
    TelescopePromptBorder = { bg = colors.gray_2, fg = colors.gray_2 },
    TelescopePromptTitle = { bg = colors.orange, fg = colors.gray_1, bold = true },
    TelescopePreviewNormal = { bg = colors.gray_0 },
    TelescopePreviewBorder = { bg = colors.gray_0, fg = colors.gray_0 },
    TelescopePreviewTitle = { bg = colors.green, fg = colors.gray_1, bold = true },
    TelescopePromptCounter = { fg = colors.gray_4 },

    -- LSP diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.gray_4 },

    -- nvim-cmp
    CmpItemAbbrDeprecated = { fg = "#808080", strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.red },
    CmpItemAbbrMatchFuzzy = { fg = colors.orange },
    CmpItemKind = { fg = colors.yellow },

    -- NeoTree
    NeoTreeFloatBorder = { fg = colors.gray_4, bg = colors.gray_1 },
    NeoTreeFloatNormal = { bg = colors.gray_1 },
    NeoTreeFloatTitle = { bg = colors.gray_1 },
    NeoTreeGitModified = { fg = colors.yellow, bold = true, italic = true },
    NeoTreeGitUntracked = { fg = colors.orange, italic = true },
    NeoTreeGitDeleted = { fg = colors.red, bold = true },
}

for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end

return {
    colors = colors,
}
