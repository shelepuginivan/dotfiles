local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Neotree
map("n", "<C-q>", "<cmd>Neotree toggle<CR>", opts)

-- LuaSnip
map("i", "<C-d>", function()
    require("luasnip").jump(1)
end, opts)
map("i", "<C-s>", function()
    require("luasnip").jump(-1)
end, opts)
map("s", "<Tab>", function()
    require("luasnip").jump(1)
end, opts)
map("s", "<S-Tab>", function()
    require("luasnip").jump(-1)
end, opts)

-- Telescope
map("n", "ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "fh", "<cmd>Telescope help_tags<CR>", opts)

-- Misc
map("i", "<C-z>", "<C-o>u", opts)
map("v", "<C-z>", "<C-o>u", opts)
map("n", "<C-z>", "u", opts)

-- LSP
-- Set LSP mappings when language server is attached
-- See `:help vim.lsp.*` for documentation on any of the below functions
local on_attach = function(event)
    local options = { buffer = event.buf }

    map("n", "gD", vim.lsp.buf.declaration, options)
    map("n", "gd", vim.lsp.buf.definition, options)
    map("n", "K", vim.lsp.buf.hover, options)
    map("n", "gr", require("telescope.builtin").lsp_references, options)
    map("n", "gi", require("telescope.builtin").lsp_implementations, options)
    map("n", "<C-k>", vim.lsp.buf.signature_help, options)
    map("n", "<leader>D", vim.lsp.buf.type_definition, options)
    map("n", "<leader>rn", vim.lsp.buf.rename, options)
    map("n", "<leader>ca", vim.lsp.buf.code_action, options)
    map("n", "<leader>e", vim.diagnostic.open_float, options)
    map("n", "<leader>q", vim.diagnostic.setloclist, options)
    map("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
    end, options)
end

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = on_attach,
})
