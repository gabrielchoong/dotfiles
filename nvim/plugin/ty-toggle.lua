local ty_using_remote = false

vim.keymap.set("n", "<leader>tl", function()
  local ty_remote_cmd = { "ssh", "pi-03", "/home/admin/pack/venv/bin/ty", "server" }
  local ty_remote_root_dir = "/home/admin/piris-pi"
  local ty_local_cmd = { "ty", "server" }
  local ty_local_root_dir = vim.fn.getcwd()

  ty_using_remote = not ty_using_remote
  local new_cmd = ty_using_remote and ty_remote_cmd or ty_local_cmd
  local new_root = ty_using_remote and ty_remote_root_dir or ty_local_root_dir

  for _, client in ipairs(vim.lsp.get_clients({ name = "ty" })) do
    client:stop()
  end

  vim.lsp.enable("ty", false)
  vim.lsp.config("ty", { cmd = new_cmd, root_dir = new_root })

  vim.defer_fn(function()
    vim.lsp.enable("ty", true)
  end, 500)

  vim.schedule(function()
    vim.cmd("edit")
  end)

  local notify = require("notify")
  notify("LSP(ty): " .. (ty_using_remote and "Remote (Pi)" or "Local"), vim.log.levels.INFO, { title = "LSP" })
end, { desc = "Toggle ty LSP remote/local" })
