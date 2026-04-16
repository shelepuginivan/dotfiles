local c = {
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

local highlights = {
    Normal = { bg = c.none, fg = c.fg },
    NormalNC = { bg = c.none },
    Comment = { bg = c.none, fg = c.gray_4, italic = true },
    Constant = { bg = c.none, fg = c.purple },
    Special = { bg = c.none, fg = c.fg },
    Identifier = { bg = c.none, fg = c.fg },
    Statement = { bg = c.none, fg = c.red },
    PreProc = { bg = c.none, fg = c.red },
    Type = { bg = c.none, fg = c.yellow },
    Underlined = { bg = c.none, underline = true },
    Todo = { bg = c.none, bold = true },
    String = { bg = c.none, fg = c.green },
    Function = { bg = c.none, fg = c.yellow },
    Operator = { bg = c.none },
    LineNr = { bg = c.none, fg = c.gray_4 },
    NonText = { bg = c.none, fg = c.gray_4 },
    SignColumn = { bg = c.none, fg = c.gray_4 },
    CursorLine = { bg = c.none },
    CursorLineNr = { bg = c.none, bold = true },

    Visual = { bg = c.gray_3 },
    Pmenu = { bg = c.gray_1 },
    PmenuSel = { bg = c.gray_3 },

    Keyword = { fg = c.red },
    Boolean = { fg = c.purple },
    Number = { fg = c.purple },

    Directory = { fg = c.green, bold = true },
    MoreMsg = { fg = c.blue },
    Question = { fg = c.yellow, bold = true },

    TSField = { fg = c.blue },

    -- git
    gitcommitBranch = { fg = c.purple },
    gitcommitHeader = { fg = c.fg },
    diffLine = { fg = c.orange, bold = true },
    diffRemoved = { fg = c.red },
    diffAdded = { fg = c.green },
    diffIndexLine = { fg = c.orange, bold = true },

    -- Go
    goFormatSpecifier = { fg = c.orange },
    goBuiltins = { fg = c.orange },
    goEscapeC = { fg = c.orange },

    -- Markup
    ["@markup.list"] = { fg = c.red },
    ["@markup.raw"] = { fg = c.gray_5 },
    ["@markup.heading.1.markdown"] = { fg = c.green, bold = true },
    ["@markup.heading.2.markdown"] = { fg = c.green, bold = true },
    ["@markup.heading.3.markdown"] = { fg = c.yellow, bold = true },
    ["@markup.heading.4.markdown"] = { fg = c.yellow, bold = true },
    ["@punctuation.special.markdown"] = { fg = c.red },
    ["@string.escape"] = { fg = c.orange },

    -- Configuration
    tomlTable = { fg = c.yellow, bold = true },
    tomlTableArray = { fg = c.yellow, bold = true },
    yamlBlockString = { fg = c.green },
    yamlBlockScalarHeader = { fg = c.red },

    -- Telescope
    TelescopeNormal = { bg = c.gray_1 },
    TelescopeSelection = { bg = c.none, fg = c.red },
    TelescopeMatching = { fg = c.yellow },
    TelescopeResultsBorder = { bg = c.gray_1, fg = c.gray_1 },
    TelescopeResultsTitle = { bg = c.red, fg = c.gray_1, bold = true },
    TelescopePromptNormal = { bg = c.gray_2 },
    TelescopePromptBorder = { bg = c.gray_2, fg = c.gray_2 },
    TelescopePromptTitle = { bg = c.orange, fg = c.gray_1, bold = true },
    TelescopePreviewNormal = { bg = c.gray_0 },
    TelescopePreviewBorder = { bg = c.gray_0, fg = c.gray_0 },
    TelescopePreviewTitle = { bg = c.green, fg = c.gray_1, bold = true },
    TelescopePromptCounter = { fg = c.gray_4 },

    -- LSP diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.gray_4 },

    -- nvim-cmp
    CmpItemAbbrDeprecated = { fg = "#808080", strikethrough = true },
    CmpItemAbbrMatch = { fg = c.red },
    CmpItemAbbrMatchFuzzy = { fg = c.orange },
    CmpItemKind = { fg = c.yellow },

    -- NeoTree
    NeoTreeFloatBorder = { fg = c.gray_4, bg = c.gray_1 },
    NeoTreeFloatNormal = { bg = c.gray_1 },
    NeoTreeFloatTitle = { bg = c.gray_1 },
    NeoTreeGitModified = { fg = c.yellow, bold = true, italic = true },
    NeoTreeGitUntracked = { fg = c.orange, italic = true },
    NeoTreeGitDeleted = { fg = c.red, bold = true },
}

for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end

return {
    colors = c,
}
