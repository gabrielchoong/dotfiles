local map = vim.keymap.set

local telescope = require("telescope.builtin")
map("n", "<leader>f", telescope.fd, { desc = "Find files" })
map("n", "<leader>o", telescope.oldfiles, { desc = "Old files" })
map("n", "<leader>l", telescope.live_grep, { desc = "Live grep" })
