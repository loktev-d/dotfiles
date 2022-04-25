vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-jdtls'
    use 'nvim-treesitter/nvim-treesitter'
    use 'ellisonleao/gruvbox.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
    }
    use 'j-hui/fidget.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'ms-jpq/coq_nvim', branch = 'coq' }
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    use 'tami5/lspsaga.nvim'
    use 'ray-x/lsp_signature.nvim'
    use 'numToStr/Comment.nvim'
    use { 'phaazon/hop.nvim', branch = 'v1' }
    use 'windwp/nvim-autopairs'
    use 'romgrk/nvim-treesitter-context'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'abecodes/tabout.nvim'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'lewis6991/gitsigns.nvim'
end
)
