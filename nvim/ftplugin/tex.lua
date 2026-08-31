vim.keymap.set("n", "<F5>", function()
  vim.cmd("vsplit | term pdflatex %")
  vim.cmd("stopinsert")
end, { buffer = true, desc = "Compile LaTeX to PDF" })
