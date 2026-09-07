require("conform").setup({
  formatters = {
    oxfmt = {
      command = "npx.cmd",
      prepend_args = { "--no-install", "oxfmt" },
    },
    shfmt = {
      command = "shfmt.exe",
      prepend_args = { "-i", "2", "-ci", "-s" },
    },
  },
  format_on_save = {
    timeout_ms = 700,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    javascript = { "oxfmt" },
    typescript = { "oxfmt" },
    javascriptreact = { "oxfmt" },
    typescriptreact = { "oxfmt" },
    json = { "oxfmt" },
    jsonc = { "oxfmt" },
    html = { "oxfmt" },
    css = { "oxfmt" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    markdown = { "prettier" },
  },
})
