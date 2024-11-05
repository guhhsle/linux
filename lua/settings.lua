vim.opt.termguicolors = true
vim.opt.background = "light"
vim.opt.smartcase = true
vim.g.gruvbox_italic = 1
vim.o.mouse = 'a'

vim.o.colorcolumn = ''
vim.wo.signcolumn = 'no'
vim.o.errorbells = false
vim.o.wrap = true
vim.o.textwidth = 200
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.expand('~/AppData/Local/nvim-data/backup')
vim.o.undofile = true
vim.o.incsearch = true
vim.o.clipboard = 'unnamedplus'
vim.o.backspace = 'indent,eol,start'
vim.opt.laststatus = 0
vim.opt.ruler = false

-- TreeToggle
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- LSP mappings
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>ca', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', { noremap = true, silent = true })


vim.cmd [[
	colorscheme gruvbox
	hi Normal guibg=NONE ctermbg=NONE
]]
