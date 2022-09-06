local navic = require("nvim-navic")

return {
    sections = {
        lualine_c = {
            'filename',
            { navic.get_location, cond = navic.is_available }
        },
        lualine_x = {'filetype'},
    }
}
