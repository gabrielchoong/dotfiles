local servers = {
  -- Bash
  "bash_win",
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
  "oxlint_win",
  "tsc_win",
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
