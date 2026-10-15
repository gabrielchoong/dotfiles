return {
  filetypes = { "markdown", "tex", "plaintext" },
  settings = {
    ["harper-ls"] = {
      userDictPath = vim.fn.expand("~/.local/share/nvim/spell/harper_dict.txt"),

      workspaceDictPath = ".harper/dictionary.txt",
      ignoredLintsPath = ".harper/ignored_lints/",

      linters = {
        spell_check = true,
        repeated_words = true,
      },
    },
  },
}
