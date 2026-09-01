vim.loader.enable()

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.mapleader = " "

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.list = true
vim.o.confirm = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autocomplete = true
vim.opt.undofile = true
vim.opt.pumborder = "rounded"
vim.opt.pummaxwidth = 40
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.mouse = ""

vim.cmd("packadd! nohlsearch")

vim.pack.add({
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/ellisonleao/gruvbox.nvim",
  "https://github.com/barreiroleo/ltex_extra.nvim",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/stevearc/quicker.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/folke/todo-comments.nvim",
  "https://github.com/tpope/vim-fugitive",
  "https://github.com/folke/which-key.nvim",
})

require("keymaps")
require("config.options")
require("config.autocmd")

vim.cmd([[colorscheme gruvbox]])
