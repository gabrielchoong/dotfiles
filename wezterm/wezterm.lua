local wezterm = require("wezterm") ---@type Wezterm
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window({
    workspace = "Master",
    cwd = wezterm.home_dir .. "/dev",
    args = { "zsh", "-l" },
  })
  window:spawn_tab({
    args = { "zsh", "-l", "-c", "concord" },
  })
  window:spawn_tab({
    args = { "zsh", "-l", "-c", "agy" },
  })
end)

local config = wezterm.config_builder()
local color_scheme = "GruvboxDark"

config.color_scheme = color_scheme
local colors = wezterm.color.get_builtin_schemes()[color_scheme]

config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = colors.ansi[8],
      fg_color = colors.background,
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = colors.background,
      fg_color = colors.foreground,
    },
    background = colors.background,
  },
}

config.font = wezterm.font_with_fallback({
  { family = "JetBrainsMono Nerd Font", scale = 1.0 },
  { family = "Zhi Mang Xing", scale = 1.5 },
})

config.font_size = 16
config.command_palette_font_size = 18

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"

config.window_padding = {
  top = 0,
  bottom = 0,
}

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
