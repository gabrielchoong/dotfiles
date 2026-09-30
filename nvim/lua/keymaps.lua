-- ==========================================================================================
-- KEYMAPS
-- ==========================================================================================
local map = vim.keymap.set

-- ------------------------------------------------------------------------------------------
-- PLACEHOLDER ACTIONS
-- ------------------------------------------------------------------------------------------
map("n", "<F1>", function()
  vim.notify("<F1> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F2>", function()
  vim.notify("<F2> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F3>", function()
  vim.notify("<F3> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F4>", function()
  vim.notify("<F4> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })
map("n", "<F5>", function()
  vim.notify("<F5> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F6>", function()
  vim.notify("<F6> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F7>", function()
  vim.notify("<F7> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

map("n", "<F8>", function()
  vim.notify("<F8> is not mapped for this buffer.", vim.log.levels.INFO, { title = "Keybind" })
end, { noremap = true, desc = "Unmapped keybind" })

-- ------------------------------------------------------------------------------------------
-- POPUP SELECTION
-- ------------------------------------------------------------------------------------------
map("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', { expr = true })
map("i", "<S-Tab>", 'pumvisible() ? "<C-p>" : "<S-Tab>"', { expr = true })

-- ------------------------------------------------------------------------------------------
-- Diagnostics
-- ------------------------------------------------------------------------------------------
map("n", "<C-k>", vim.diagnostic.open_float, { desc = "Open diagnostics" })

-- ------------------------------------------------------------------------------------------
-- TERMINAL & NAVIGATION
-- ------------------------------------------------------------------------------------------
map("t", "<Esc>", "<C-\\><C-n>")

map({ "t", "i" }, "<A-h>", "<C-\\><C-n><C-w>h")
map({ "t", "i" }, "<A-j>", "<C-\\><C-n><C-w>j")
map({ "t", "i" }, "<A-k>", "<C-\\><C-n><C-w>k")
map({ "t", "i" }, "<A-l>", "<C-\\><C-n><C-w>l")
map({ "n" }, "<A-h>", "<C-w>h")
map({ "n" }, "<A-j>", "<C-w>j")
map({ "n" }, "<A-k>", "<C-w>k")
map({ "n" }, "<A-l>", "<C-w>l")
