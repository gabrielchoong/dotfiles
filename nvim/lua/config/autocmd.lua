vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    vim.o.clipboard = "unnamedplus"
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {
    "/tmp/*",
    "*.secret",
    ".env*",
    "*/passwords.txt",
  },
  callback = function()
    vim.opt_local.undofile = false
  end,
  desc = "Disable undofile for certain files",
})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    vim.keymap.set("n", "grd", vim.lsp.buf.definition, { buffer = event.buf, desc = "Go to definition" })
  end,
})
