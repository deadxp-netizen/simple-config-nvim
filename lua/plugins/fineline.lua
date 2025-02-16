local fineline = require('fine-cmdline')
local fn = fineline.fn

fineline.setup({
    cmdline = {
        enable_keymaps = true,
        smart_history = true,
        prompt = ': '
    },

    popup = {
        position = '50%',
        buf_options = {
            filetype = 'FineCmdlinePrompt'
        },

        border = {
            style = 'rounded',

            text = {
                top = "Vim Command",
                bottom_align = "left",
            }
        }
    },

    hooks = {
        set_keymaps = function(imap, feedkeys)
            imap('<Up>', fn.up_search_history)
            imap('<Down>', fn.down_search_history)
        end
    }
})
