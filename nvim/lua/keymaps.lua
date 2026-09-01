-- ==========================================================================================
-- FUNCTIONS
-- ==========================================================================================

-- ==========================================================================================
-- FUNCTIONS
-- ==========================================================================================
local function git_push_unset_branch()
  local branch = vim.fn.input("git push -u origin ")
  if branch ~= "" then
    vim.cmd("vsplit | term git push -u origin " .. branch)
    vim.cmd("stopinsert")
    cmd("vsplit | term git push -u origin " .. branch)
    cmd("stopinsert")
  end
end

-- ==========================================================================================
-- KEYMAPS
-- ==========================================================================================
local map = vim.keymap.set
local function git_pull_rebase_branch()
  local branch = vim.fn.input("git pull --rebase ")
  if branch ~= "" then
    cmd("vsplit | term git pull --rebase " .. branch)
    cmd("stopinsert")
  end
end

local function git_rebase_interactive()
  local head = vim.fn.input("git rebase -i ")
  if head ~= "" then
    cmd("vsplit | term git rebase -i " .. head)
    cmd("stopinsert")
  end
end

local function git_fugitive_gvdiffsplit()
  cmd("Gvdiffsplit")
end

-- ------------------------------------------------------------------------------------------
-- GIT ACTIONS
-- ------------------------------------------------------------------------------------------
map("n", "<F1>", git_push_unset_branch, { noremap = true, desc = "git push -u origin <branch>" })
map("n", "<F2>", git_pull_rebase_branch, { noremap = true, desc = "git pull --rebase" })
map("n", "<F3>", git_rebase_interactive, { noremap = true, desc = "git rebase -i <head~n>" })
map("n", "<F4>", git_fugitive_gvdiffsplit, { noremap = true, desc = "git resolve merge conflicts" })

-- ------------------------------------------------------------------------------------------
-- POPUP SELECTION
-- ------------------------------------------------------------------------------------------
map("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', { expr = true })
map("i", "<S-Tab>", 'pumvisible() ? "<C-p>" : "<S-Tab>"', { expr = true })

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
