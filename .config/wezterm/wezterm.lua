local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Font settings
config.font_size = 13
config.line_height = 1.2
config.font = wezterm.font("JetBrainsMonoNerdFontMono", { weight = "Medium", italic = false })

-- Appearance
config.color_scheme = "Gruvbox dark, hard (base16)"
config.cursor_blink_rate = 0
config.enable_tab_bar = false
config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 4,
}
-- config.window_background_image = os.getenv 'HOME' .. '/.config/wezterm/bg-darker.png'

local opa_def = 0.90
config.window_background_opacity = opa_def

wezterm.on("inc-opacity", function(window, pane)
	opa_def = opa_def + 0.05
	if opa_def > 1.0 then
		opa_def = 1.0
	end
	local overrides = window:get_config_overrides() or {}
	overrides.window_background_opacity = opa_def
	window:set_config_overrides(overrides)
end)

wezterm.on("dec-opacity", function(window, pane)
	opa_def = opa_def - 0.05
	if opa_def < 0.0 then
		opa_def = 0.0
	end
	local overrides = window:get_config_overrides() or {}
	overrides.window_background_opacity = opa_def
	window:set_config_overrides(overrides)
end)

config.keys = {
	{ key = "[", mods = "CTRL", action = wezterm.action.EmitEvent("dec-opacity") },
	{ key = "]", mods = "CTRL", action = wezterm.action.EmitEvent("inc-opacity") },
}

-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

return config
