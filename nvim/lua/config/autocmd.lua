vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    vim.o.clipboard = "unnamedplus"
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {
    "/tmp/*",
    "*.secret",
    ".env*",
    "*/passwords.txt",
  },
  callback = function()
    vim.opt_local.undofile = false
  end,
  desc = "Disable undofile for certain files",
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end

    if client and client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end

    if client and client:supports_method("textDocument/codeLens") then
      vim.lsp.codelens.enable(true, { bufnr = bufnr })
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    vim.keymap.set("n", "grd", vim.lsp.buf.definition, { buffer = event.buf, desc = "Go to definition" })
  end,
})
