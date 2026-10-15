local servers = {
  "bashls",
  "gopls",
  "harper",
  "lua",
  "markdown_oxide",
  "oxlint",
  "ruff",
  "rust_analyzer",
  "texlab",
  "tsc",
  "ty",
}

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

vim.lsp.config("*", {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
  root_markers = { ".git" },
})

vim.keymap.set("n", "grd", vim.lsp.buf.definition, { desc = "vim.lsp.buf.definition()" })
