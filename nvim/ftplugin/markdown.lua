vim.opt_local.textwidth = 88
vim.opt_local.colorcolumn = "+1"

vim.opt_local.formatoptions:append("q")

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("RenderMarkdown toggle")
end, { desc = "Toggle Markdown Renderer", buffer = true })
