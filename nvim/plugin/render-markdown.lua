vim.api.nvim_create_autocmd("LspAttach", {
  desc = "Render Markdown on attach",
  callback = function()
    local filetype = vim.bo.filetype
    if filetype == "markdown" then
      vim.cmd("RenderMarkdown enable")
    end
  end,
})
