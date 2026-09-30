local gen_loader = require("mini.snippets").gen_loader

require("mini.snippets").setup({
  snippets = {
    function(context)
      local search_context = { buf_id = context.buf_id, lang = context.lang }

      if search_context.lang == "markdown_inline" then
        search_context.lang = "markdown"
      end

      return gen_loader.from_lang()(search_context)
    end,
  },
  mappings = {
    jump_next = "<Tab>",
    jump_prev = "<S-Tab>",
  },
})
