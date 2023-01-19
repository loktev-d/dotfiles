require('packer').startup(function(use)
    -- THEMES
    use 'tanvirtin/monokai.nvim'
    use 'ishan9299/nvim-solarized-lua'
    use 'shaunsingh/nord.nvim'
    use "olimorris/onedarkpro.nvim"

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
    use { 'ms-jpq/coq_nvim', branch = 'coq', commit = '5eddd31bf8a98d1b893b0101047d0bb31ed20c49' }
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
    use { 'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }
    use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
