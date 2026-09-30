local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "         @@@                            ",
  "        @@@@            @@@             ",
  "       @@@@@@@                          ",
  "      +@@@@@+            @*             ",
  "      @@@@             @@@@@@@          ",
  "       @              :@@@@@            ",
  "          @@@@        @@@@              ",
  "       @@@+  @     @@@@@@               ",
  "             @   @@@@@@@@@@@@@@@#       ",
  "             @@    @@@@   @@@@@         ",
  "         -@@@@@@  @@@@  @@@@@           ",
  "     :@@@@@@@@@   @@@@@@@@@@+           ",
  "       @@@@@@@@    +@@   @@@            ",
  "          @@@@          @@@             ",
  "          @@@        %@@@@@@@@@@@@@     ",
  "        @@@@     @@@@@@@@@@=            ",
  "         @@       @@@+                  ",
}

dashboard.section.buttons.val = {
  dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "Research", ":Telescope live_grep cwd=$HOME/papers<CR>"),
  dashboard.button("o", "Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("n", "Notes", ":Telescope live_grep cwd=$HOME/notes/general<CR>"),
  dashboard.button("t", "Tasks", ":TodoTelescope cwd=$HOME/Notes keywords=TODO,FIXME<CR>"),
}

dashboard.section.footer.val = function()
  local v = vim.version()
  local date = vim.fn.strftime("%A, %d %b %Y")
  local version = string.format("NeoVim %d.%d.%d", v.major, v.minor, v.patch)
  local plugin = string.format("Loaded %d plugins", vim.tbl_count(vim.pack.get()))
  return { version .. " [ " .. date .. " ] " .. plugin }
end

dashboard.section.footer.opts.hl = "Comment"

dashboard.config.layout = {
  { type = "padding", val = 2 },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.footer,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
}

local alpha_cursor = vim.api.nvim_create_augroup("alpha_cursor", { clear = true })

vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter", "FileType" }, {
  group = alpha_cursor,
  callback = function()
    if vim.bo.filetype == "alpha" then
      local hl = vim.api.nvim_get_hl(0, { name = "Cursor" })
      hl.blend = 100
      ---@diagnostic disable-next-line: param-type-mismatch
      vim.api.nvim_set_hl(0, "Cursor", hl)
      vim.opt.guicursor:append("a:Cursor/lCursor")
    end
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = alpha_cursor,
  callback = function()
    if vim.bo.filetype == "alpha" then
      local hl = vim.api.nvim_get_hl(0, { name = "Cursor" })
      hl.blend = 0
      ---@diagnostic disable-next-line: param-type-mismatch
      vim.api.nvim_set_hl(0, "Cursor", hl)
      vim.opt.guicursor:remove("a:Cursor/lCursor")
    end
  end,
})

alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])

vim.keymap.set("n", "<leader>a", function()
  vim.cmd("Alpha")
end, { desc = "Dashboard" })
