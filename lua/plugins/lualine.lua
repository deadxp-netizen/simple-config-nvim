require('lualine').setup ({
    options = {
        globalstatus = true,
        theme = 'gruvbox',
        section_separators = {},
        component_separators = {},
    },

    sections = {
        lualine_a = {},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'},
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },

    tabline = {},
    extensions = {}
})
