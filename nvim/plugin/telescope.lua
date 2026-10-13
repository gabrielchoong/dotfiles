local map = vim.keymap.set

local telescope = require("telescope.builtin")
map("n", "<leader>f", telescope.fd, { desc = "Find files" })
map("n", "<leader>o", telescope.oldfiles, { desc = "Old files" })
map("n", "<leader>l", telescope.live_grep, { desc = "Live grep" })

local act = require("telescope.actions")
local acts = require("telescope.actions.state")
local fd_oldfiles_toggle = function(prompt_bufnr)
  local current_picker = acts.get_current_picker(prompt_bufnr)
  local cwd = current_picker.cwd
  local prompt = current_picker:_get_prompt()
  local title = current_picker.prompt_title

  act.close(prompt_bufnr)

  if title == "Find Files" then
    telescope.live_grep({ cwd = cwd, default_text = prompt })
  else
    telescope.fd({ cwd = cwd, default_text = prompt })
  end
end

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-g>"] = fd_oldfiles_toggle,
      },
      n = {
        ["<C-g>"] = fd_oldfiles_toggle,
      },
    },
  },
})
