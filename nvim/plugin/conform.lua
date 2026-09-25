require("conform").setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    lua = { "stylua" },
    tex = { "tex-fmt" },
  },
  formatters = {
    ["tex-fmt"] = {
      cwd = require("conform.util").root_file({ "tex-fmt.toml", ".git" }),
    },
  },
})
