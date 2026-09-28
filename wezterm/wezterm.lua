local wezterm = require("wezterm") ---@type Wezterm

local config = wezterm.config_builder()

config.color_scheme = "GruvboxDark"

config.colors = {}

config.font = wezterm.font_with_fallback({
  "JetBrainsMono Nerd Font",
})

config.font_size = 16
config.command_palette_font_size = 18

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.launch_menu = {
  {
    label = "btop",
    args = { "zsh", "-l", "-c", "btop" },
  },
  {
    label = "zsh",
    args = { "zsh", "-l" },
  },
}

local act = wezterm.action

config.keys = {
  {
    key = "p",
    mods = "CMD",
    action = act.ShowLauncher,
  },
}

return config
