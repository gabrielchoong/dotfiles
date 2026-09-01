local map = vim.keymap.set

local telescope = require("telescope.builtin")
map("n", "<leader>f", telescope.fd, { desc = "Find files" })
map("n", "<leader>o", telescope.oldfiles, { desc = "Old files" })
map("n", "<leader>m", telescope.fd, { desc = "Live grep" })
