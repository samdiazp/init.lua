vim.opt.nu = true
vim.opt.relativenumber = true

-- show indentation and blank lines
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "trail:⋅"
-- vim.opt.listchars:append "eol:↴"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
