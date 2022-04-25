vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.background = "dark"
vim.opt.scrolloff = 7
vim.opt.cursorline = true
vim.opt.showmode = false

local signature_config = {
    handler_opts = {
        border = "rounded"
    }
}

local indent_blankline_setup = {
    show_current_context = true,
    show_current_context_start = true,
}

local on_attach = require 'buf_keymaps'

require 'coq_setup'
require 'plugins'
require 'lua_setup'
require 'treesitter_setup'
require 'lualine_setup'
require 'nvim-gps'.setup {}
require 'fidget'.setup {}
require 'telescope'.setup {}
require 'lspsaga'.setup {}
require 'lsp_signature'.setup(signature_config)
require 'Comment'.setup {}
require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
require 'autopairs_setup'
require 'treesitter-context'.setup {}
require 'indent_blankline'.setup(indent_blankline_setup)
require 'tabout'.setup {}
require 'lspconfig'.lemminx.setup { on_attach = on_attach }
require 'lspconfig'.yamlls.setup { on_attach = on_attach }
require 'dapui'.setup {}
require 'gitsigns'.setup {}

vim.cmd 'colorscheme gruvbox'

-- Mapping
vim.keymap.set('i', 'jk', '<esc>')

-- Hop
vim.keymap.set('n', '<space>h', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>")

-- Telescope
vim.keymap.set('n', '<space>f', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<space>g', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<space>b', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<space>sw', '<cmd>Telescope lsp_workspace_symbols<cr>')
vim.keymap.set('n', '<space>sd', '<cmd>Telescope lsp_document_symbols<cr>')
vim.keymap.set('n', '<space>d', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>')
vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>')
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
vim.keymap.set('n', 'gD', '<cmd>Telescope lsp_type_definitions<cr>')
