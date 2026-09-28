require("toggleterm").setup({
  direction = "float",
  close_on_exit = false,
})

vim.keymap.set("n", "<leader>t", function()
  vim.cmd("ToggleTerm")
end, { desc = "Toggle Floating Terminal" })
