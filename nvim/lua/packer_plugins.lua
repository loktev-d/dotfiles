require('packer').startup(function(use)
    use "olimorris/onedarkpro.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }

    use 'neovim/nvim-lspconfig'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        "glepnir/lspsaga.nvim",
        branch = "main"
    }
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use "ray-x/lsp_signature.nvim"
    -- use {
    --     "SmiteshP/nvim-navic",
    --     requires = "neovim/nvim-lspconfig"
    -- }
    -- use 'RRethy/vim-illuminate'
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
    use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'NvChad/nvim-colorizer.lua'
    use 'andweeb/presence.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    use 'feline-nvim/feline.nvim'

    -- use({
    --     "utilyre/barbecue.nvim",
    --     tag = "*",
    --     requires = {
    --         "SmiteshP/nvim-navic",
    --         "nvim-tree/nvim-web-devicons", -- optional dependency
    --     },
    --     after = "nvim-web-devicons", -- keep this if you're using NvChad
    --     config = function()
    --         require("barbecue").setup {}
    --     end,
    -- })
end)
