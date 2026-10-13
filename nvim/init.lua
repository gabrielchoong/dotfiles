vim.loader.enable()

vim.g.mapleader = " "

vim.cmd("packadd! cfilter")
vim.cmd("packadd! matchit")
vim.cmd("packadd! nohlsearch")

vim.pack.add({
  "https://github.com/goolord/alpha-nvim",
  "https://github.com/itchyny/calendar.vim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/ellisonleao/gruvbox.nvim",
  "https://github.com/barreiroleo/ltex_extra.nvim",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/rcarriga/nvim-notify",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/stevearc/quicker.nvim",
  "https://github.com/meanderingprogrammer/render-markdown.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/folke/todo-comments.nvim",
  "https://github.com/akinsho/toggleterm.nvim",
  "https://github.com/tpope/vim-fugitive",
  "https://github.com/folke/which-key.nvim",
})

require("keymaps")
require("config.options")
require("config.autocmd")

vim.cmd([[colorscheme gruvbox]])
