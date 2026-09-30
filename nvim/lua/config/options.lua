-- ------------------------------------------------------------------------------------------
-- Globals
-- ------------------------------------------------------------------------------------------
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.tex_flavor = "latex"

-- ------------------------------------------------------------------------------------------
-- Options
-- ------------------------------------------------------------------------------------------
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.list = true
vim.opt.confirm = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autocomplete = true
vim.opt.undofile = true
vim.opt.pumborder = "rounded"
vim.opt.pummaxwidth = 40
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.termguicolors = true
vim.opt.mouse = ""
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

-- ------------------------------------------------------------------------------------------
-- Other configurations
-- ------------------------------------------------------------------------------------------
vim.diagnostic.config({
  virtual_lines = true,
})
