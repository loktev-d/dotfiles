return {
    'yamatsum/nvim-cursorline',

    config = function()
        require 'catppuccin'.setup {
            cursorline = {
                timeout = 0,
            },
            cursorword = {
                enable = true,
            },
        }
    end
}
