require("auto-save").setup({
    enabled = true,
    execution_message = {
        message = function()
            return ("󱣫 AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.2,
        cleaning_interval = 1000, -- in ms
    },
    events = { "InsertLeave", "TextChanged" },
    conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true,
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135,
})
