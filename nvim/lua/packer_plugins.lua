require('packer').startup(function(use)
    use 'tanvirtin/monokai.nvim'
    use 'neovim/nvim-lspconfig'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-lualine/lualine.nvim'
    use({
        "glepnir/lspsaga.nvim",
        branch = "main"
    })
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'ms-jpq/coq_nvim', branch = 'coq' }
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    use "ray-x/lsp_signature.nvim"
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }
    use 'RRethy/vim-illuminate'
    use 'yamatsum/nvim-cursorline'
    use "lukas-reineke/indent-blankline.nvim"
    use 'numToStr/Comment.nvim'
    use {
        'phaazon/hop.nvim',
        branch = 'v2'
    }
    use 'windwp/nvim-autopairs'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'lewis6991/gitsigns.nvim'
    use 'j-hui/fidget.nvim'
end)
