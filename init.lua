require('core.plugins')
require('core.mapping')
require('core.setting')

require('plugins.treesitter')
require('plugins.lsp')
require('plugins.color')
require('plugins.cmp')
require('plugins.codeium')
require('plugins.airline')


require("transparent").setup({
	options = {
		theme = 'gruvbox', -- Выберите тему, например, 'gruvbox', 'dracula', 'nord' и т.д.
		section_separators = {'', ''}, -- Разделители между секциями
		component_separators = {'', ''}, -- Разделители между компонентами
	},
	enable = true, -- Включить прозрачность
	extra_groups = { -- Дополнительные группы, которые вы хотите сделать прозрачными
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
		"lualine"
	},
	exclude = {}, -- Группы, которые не нужно делать прозрачными
	on_clear = function() end,
})


 require('lualine').setup ({
     options = {
         theme = 'gruvbox', -- Выберите тему, например, 'gruvbox', 'dracula', 'nord' и т.д.
         section_separators = {'', ''}, -- Разделители между секциями
         component_separators = {'', ''}, -- Разделители между компонентами
     },
     sections = {
         lualine_a = {}, -- Первая секция
         lualine_b = {'branch'}, -- Вторая секция
         lualine_c = {'filename'}, -- Третья секция
         lualine_x = {}, -- Четвертая секция
         lualine_y = {}, -- Пятая секция
         lualine_z = {'location'}, -- Шестая секция
     },
     inactive_sections = {
         lualine_a = {}, -- Пусто для неактивных секций
         lualine_b = {},
         lualine_c = {'filename'},
         lualine_x = {'location'},
         lualine_y = {},
         lualine_z = {}
     },
     tabline = {},
     extensions = {}
 })
 require('transparent').clear_prefix('lualine')

 vim.opt.list = true

 -- Настройка плагина indent-blankline
 -- require("ibl").setup({
 -- })

