return {
    'lukas-reineke/indent-blankline.nvim',

    config = function()
        require 'indent_blankline'.setup {
            show_current_context = true,
            show_current_context_start = true,
            indent_blankline_show_trailing_blankline_indent = false
        }
    end
}
