dofile(vim.fn.expand("$HOME/.cache/calendar.vim/credentials.lua"))

vim.g.calendar_google_calendar = 1
vim.g.calendar_google_task = 0
vim.g.calendar_view = "day_4"

vim.keymap.set("n", "<leader>c", function()
  vim.cmd("Calendar")
end, { desc = "Google Calendar" })
