require("lualine").setup({
  options = {
    theme = "auto",
    disabled_filetypes = {
      statusline = { "alpha" },
      winbar = { "alpha" },
    },
    ignore_focus = {},
    always_divide_middle = false,
    always_show_tabline = false,
    globalstatus = false,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "lsp_status" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  winbar = {
    lualine_a = {
      "os.date('%a')",
      {
        function()
          local dir = vim.fn.expand("%:p:h")
          local cmd = string.format("git -C %s config --get remote.origin.url 2>/dev/null", dir)
          local handle = io.popen(cmd)
          if not handle then
            return "gabrielchoong"
          end
          local url = handle:read("*a")
          handle:close()

          url = url:gsub("%s+", "")
          if url == "" then
            return "gabrielchoong"
          end

          -- Dictionary of icons for different providers
          local icons = {
            ["github.com"] = "",
            ["gitlab.com"] = "",
            ["bitbucket.org"] = "",
          }

          local domain, path

          -- Try matching SSH format (git@domain.com:user/repo.git)
          domain, path = string.match(url, "git@([^:]+):(.+)")

          -- If not SSH, try matching HTTPS format (https://domain.com/user/repo.git)
          if not domain then
            domain, path = string.match(url, "https?://([^/]+)/(.+)")
          end

          -- If it's a valid remote, format it
          if domain and path then
            -- Strip the trailing .git if it exists
            path = path:gsub("%.git$", "")

            -- Get the matching icon, or use a generic Git icon () if unknown
            local icon = icons[domain] or ""

            return icon .. " " .. path
          end

          return "gabrielchoong"
        end,
      },
    },
    lualine_b = { "buffers" },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { "selectioncount", "searchcount" },
    lualine_z = { {
      "filename",
      path = 1,
      fmt = function(name)
        return vim.fn.pathshorten(name, 1)
      end,
    } },
  },
})
