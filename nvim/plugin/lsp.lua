local servers = {
  -- NeoVim config
  "lua_ls",

  -- Shell Scripting
  "bashls",

  -- Network
  "gopls",

  -- Papers
  "ltex",
  "texlab",

  -- Python
  "ruff",
  "ty",

  -- Rust
  "rust_analyzer",

  -- Web Dev
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
