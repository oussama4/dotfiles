local opt = vim.opt
local cmd = vim.api.nvim_command

opt.number = true
opt.termguicolors = true
opt.ignorecase = true
opt.incsearch = true
opt.shiftwidth = 4
opt.splitright = true
opt.splitbelow = true
opt.syntax = "ON"
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.mouse = "a"
opt.pumheight = 10
opt.showtabline = 2
opt.smartindent = true
opt.updatetime = 300
opt.cursorline = true
opt.wrap = false
opt.guifont = "monospace:h17"
opt.completeopt = { "menuone", "noselect" }

cmd('colorscheme tokyonight')
