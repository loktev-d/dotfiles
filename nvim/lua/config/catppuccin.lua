return {
    "catppuccin/nvim",
    as = "catppuccin",

    config = function()
        require 'catppuccin'.setup {
            integrations = {
                cmp = true,
                gitsigns = true,
                telescope = true,
                nvimtree = true,
                treesitter = true,
                treesitter_context = false,
                hop = true,
                neogit = true,
                indent_blankline = {
                    enabled = true,
                    colored_indent_levels = false,
                },
            }
        }

        vim.cmd.colorscheme "catppuccin"
    end
}
