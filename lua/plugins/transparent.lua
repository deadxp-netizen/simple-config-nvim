require("transparent").setup({

    options = {
        theme = 'gruvbox',
        section_separators = {},
        component_separators = {},
    },

    enable = true,
    extra_groups = {
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",
        "StatusLine",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "Airline",
        "airline",
        "lualine",
    },

    exclude = {},
    on_clear = function() end,
})

require('transparent').clear_prefix('lualine')

vim.cmd("hi FloatermBorder guibg=NONE guifg=NONE")
vim.cmd("hi FloatBorder guibg=NONE guifg=NONE")
