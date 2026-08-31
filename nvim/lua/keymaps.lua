-- ==========================================================================================
-- FUNCTIONS
-- ==========================================================================================

local function global_git_push()
  local branch = vim.fn.input("git push -u origin ")
  if branch ~= "" then
    vim.cmd("vsplit | term git push -u origin " .. branch)
    vim.cmd("stopinsert")
  end
end

-- ==========================================================================================
-- KEYMAPS
-- ==========================================================================================
local map = vim.keymap.set

-- ------------------------------------------------------------------------------------------
-- TELESCOPE
-- ------------------------------------------------------------------------------------------
local telescope = require("telescope.builtin")
map("n", "<leader>f", telescope.fd, { desc = "Find files" })
map("n", "<leader>o", telescope.oldfiles, { desc = "Old files" })
map("n", "<leader>m", telescope.fd, { desc = "Live grep" })

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

-- ------------------------------------------------------------------------------------------
-- GLOBAL ACTIONS
-- ------------------------------------------------------------------------------------------
map("n", "<C-k>", vim.diagnostic.open_float, { desc = "Open diagnostics" })
map("n", "<F1>", global_git_push, { noremap = true, desc = "Git push -u origin <branch>" })
