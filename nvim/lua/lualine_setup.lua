local gps = require 'nvim-gps'

require('lualine').setup {
    options = {
        theme = 'gruvbox_dark'
    },
    sections = {
        lualine_c = {
            'filename',
            { gps.get_location, cond = gps.is_available }
        },
        lualine_x = {'filetype'},
    }
}
