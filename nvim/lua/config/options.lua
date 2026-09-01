vim.diagnostic.config({
  virtual_lines = true,
})

vim.keymap.set("n", "<C-k>", vim.diagnostic.open_float, { desc = "Open diagnostics" })
