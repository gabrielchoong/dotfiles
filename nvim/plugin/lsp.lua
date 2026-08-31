local servers = {
  -- Bash
  "bashls",
  -- Go
  "gopls",
  -- Markdown / TeX
  "ltex",
  -- NeoVim config
  "lua_ls",
  -- Python
  "ruff",
  "ty",
  -- TypeScript
  "oxlint",
  "tsc",
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
