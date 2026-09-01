require("gitsigns").setup({
  signs = {
    add = { text = "+" },
    change = { text = "c" },
    delete = { text = "-" },
    untracked = { text = "?" },
  },
  signs_staged = {
    add = { text = "+" },
    change = { text = "x" },
    delete = { text = "-" },
    untracked = { text = "?" },
  },
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text_pos = "right_align",
    delay = 100,
  },
})

local theme_white = vim.api.nvim_get_hl(0, { name = "Normal" }).fg

vim.api.nvim_set_hl(
  0,
  "GitSignsCurrentLineBlame",
  { fg = theme_white, italic = true }
)
