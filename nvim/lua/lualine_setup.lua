local navic = require("nvim-navic")

return {
    tabline = {
        lualine_a = { 'buffers' },
    },
    sections = {
        lualine_c = {
            { 'filename', file_status = false, path = 3 },
            { navic.get_location, cond = navic.is_available }
        },
        lualine_x = { 'searchcount', 'filetype' },
    },
    extensions = {
        'chadtree'
    }
}
