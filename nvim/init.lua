vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10
vim.opt.expandtab = true
vim.opt.showmode = false
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'
vim.o.termguicolors = true

-- PLUGINS
require 'packer_plugins'

-- PLUGIN SETUPS
require 'monokai'.setup { palette = require('monokai').pro }
require 'nvim-treesitter.configs'.setup(require 'treesitter_setup')
require 'treesitter_setup'
require 'lualine'.setup(require 'lualine_setup')
require 'lspsaga'.init_lsp_saga {}
require 'lsp_signature'.setup()
require 'coq_setup'
require 'nvim-cursorline'.setup(require 'cursorline_setup')
require 'indent_blankline'.setup(require 'indent_blankline_setup')
require 'Comment'.setup()
require 'hop'.setup()
require 'autopairs_setup'
require 'treesitter-context'.setup()
require 'gitsigns'.setup()
require 'fidget'.setup {}

local on_attach = require 'on_attach'

-- LSP
require 'lspconfig'.sumneko_lua.setup(require 'lua_setup')
require 'lspconfig'.gopls.setup { on_attach = on_attach }
require 'lspconfig'.yamlls.setup { on_attach = on_attach }

local map = vim.keymap.set

-- CUSTOM MAPPING
map('i', 'jk', '<esc>')

-- LSPSAGA
map("n", "K", "<cmd>Lspsaga hover_doc<CR>")
map("n", "gv", "<cmd>Lspsaga preview_definition<CR>")
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
map("n", "<space>a", "<cmd>Lspsaga code_action<CR>")
map("v", "<space>a", "<cmd><C-U>Lspsaga range_code_action<CR>")
map("n", "<space>r", "<cmd>Lspsaga rename<CR>")
map("n", "<space>cd", "<cmd>Lspsaga show_line_diagnostics<CR>")
map("n", "<space>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
map("n", "ss", "<Cmd>Lspsaga signature_help<CR>")
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- TELESCOPE
map('n', '<space>f', '<cmd>Telescope find_files<cr>')
map('n', '<space>g', '<cmd>Telescope live_grep<cr>')
map('n', '<space>b', '<cmd>Telescope buffers<cr>')
map('n', '<space>sw', '<cmd>Telescope lsp_workspace_symbols<cr>')
map('n', '<space>sd', '<cmd>Telescope lsp_document_symbols<cr>')
map('n', '<space>st', '<cmd>Telescope treesitter<cr>')
map('n', '<space>d', '<cmd>Telescope diagnostics<cr>')
map('n', 'gr', '<cmd>Telescope lsp_references<cr>')
map('n', 'gi', '<cmd>Telescope lsp_implementations<cr>')
map('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
map('n', 'gD', '<cmd>Telescope lsp_type_definitions<cr>')
map('n', 'gb', '<cmd>Telescope git_bcommits<cr>')
map('n', 'gs', '<cmd>Telescope git_status<cr>')

-- HOP
map('n', 'f',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('n', 'F',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('n', 't',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
map('n', 'T',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
map('n', '<space>k', "<cmd>lua require'hop'.hint_words()<cr>")
