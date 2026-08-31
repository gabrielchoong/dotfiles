local gen_loader = require("mini.snippets").gen_loader

require("mini.snippets").setup({
  snippets = {
    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },

  mappings = {
    jump_next = "<Tab>",
    jump_prev = "<S-Tab>",
  },
})
