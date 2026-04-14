local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
    root_markers = { ".git" },
    capabilities = capabilities,
})

-- C / C++ / Objective C
vim.lsp.config("ccls", {
    init_options = {
        cache = {
            directory = ".ccls-cache",
        },
    },
})

-- Lua
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            runtime = {
                version = "LuaJIT",
            },
            telemetry = {
                enable = false,
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
        },
    },
})

-- Go
vim.lsp.config("gopls", {
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})

vim.lsp.enable({
    "ccls",
    "ts_ls",
    "tinymist",
    "rust_analyzer",
    "pyright",
    "lua_ls",
    "gopls",
})

vim.diagnostic.config({
    virtual_text = true,
})
