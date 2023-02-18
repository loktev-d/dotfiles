require('packer').startup(function(use)
    use(require 'config.catppuccin')

    use 'neovim/nvim-lspconfig'
    use 'kyazdani42/nvim-web-devicons'
    use(require 'config.treesitter')
    use(require 'config.lspsaga')
    use(require 'config.telescope')
    use(require 'config.lsp_signature')
    use(require 'config.cursorline')
    use(require 'config.indent_blankline')
    use(require 'config.comment')
    use(require 'config.hop')
    use(require 'config.autopairs')
    use(require 'config.treesitter_context')
    use(require 'config.gitsigns')
    use(require 'config.null_ls')
    use(require 'config.colorizer')
    use 'andweeb/presence.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use(require 'config.cmp')

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use(require 'config.nvim_tree')
    use(require 'config.feline')

    use(require 'config.barbecue')
    use 'onsails/lspkind.nvim'
    use(require 'config.neogit')
end)
