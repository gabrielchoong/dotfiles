require("toggleterm").setup({
  direction = "float",
  close_on_exit = false,
})

vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("ToggleTerm")
end, { desc = "Toggle Floating Terminal" })
