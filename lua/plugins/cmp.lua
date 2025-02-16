local cmp = require'cmp'

cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-e>'] = cmp.mapping.abort()
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
      { name = 'buffer' },
      { name = 'codeium'}
    })
})

require("codeium").setup({
    enable_cmp_source = false,
    virtual_text = {
        enabled = false,

        manual = false,
        filetypes = {},
        default_filetype_enabled = true,
        idle_delay = 75,
        virtual_text_priority = 65535,
        map_keys = true,
        accept_fallback = nil,
        key_bindings = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            clear = false,
            next = "<A-]>",
            prev = "<A-[>",
        }
    }
})
