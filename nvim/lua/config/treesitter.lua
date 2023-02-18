return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',

    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "go", "yaml", "json", "javascript", "typescript", "svelte", "css", "html",
                "astro",
                "markdown", "markdown_inline" },
            sync_install = true,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {
                enable = true
            }
        }

    end
}
