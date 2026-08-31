return {
  filetypes = { "bibtex", "markdown", "tex", "plaintext" },

  on_attach = function()
    require("ltex_extra").setup({
      load_langs = { "en-US" },
      init_check = true,
      path = ".ltex",
      log_level = "none",
    })
  end,

  on_init = function(client)
    client.config.settings.ltex.enabled = { "bibtex", "markdown", "tex", "plaintext" }
  end,

  settings = {
    ltex = {
      language = "en-US",
    },
  },
}
