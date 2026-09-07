local map = vim.keymap.set
local cmd = vim.cmd

map("n", "<F5>", function()
  local run_options = {
    {
      label = "Run current Python file",
      action = function()
        return "uv run python %"
      end,
    },
    {
      label = "Run Python script in NeoVim",
      action = function()
        local filepath = vim.fn.expand("%"):gsub("\\", "/")
        return "uv run python " .. filepath
      end,
    },
    {
      label = "Run Python module in NeoVim",
      action = function()
        local module_name = vim.fn.input("Module: ")
        return "PYTHONPATH=src uv run python -m " .. module_name
      end,
    },
  }
  vim.ui.select(run_options, {
    prompt = "Select Run Mode:",
    format_item = function(item)
      return item.label
    end,
  }, function(choice)
    if not choice then
      return
    end

    cmd("vsplit | enew")

    local args = vim.fn.input("args: ")

    vim.fn.termopen({ "bash", "-c", choice.action() .. " " .. args })

    cmd("stopinsert")
  end)
end, { buffer = true, desc = "Python Runner" })
