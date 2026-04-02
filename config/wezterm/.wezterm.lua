local wezterm = require("wezterm")

return {
	-- RENDERING ENGINE (critical)
	front_end = "WebGpu",
	animation_fps = 60,
	max_fps = 120,

	-- FONT: show-accurate (thin, technical, neutral)
	font = wezterm.font_with_fallback({
		{
			family = "IBM Plex Mono",
			weight = "Regular",
			harfbuzz_features = { "calt=0", "liga=0" },
		},
	}),
	font_size = 14,
	line_height = 1.08,

	-- COLOR SCIENCE (Pantheon-matched)
	colors = {
		foreground = "#cfd6dd",
		background = "#0a0e13",

		cursor_bg = "#00eaff",
		cursor_border = "#00eaff",
		cursor_fg = "#0a0e13",

		selection_bg = "#1b2632",
		selection_fg = "#e6edf3",

		ansi = {
			"#0a0e13", -- black
			"#ff4c4c", -- red
			"#5af78e", -- green
			"#f3f99d", -- yellow
			"#57c7ff", -- blue
			"#ff6ac1", -- magenta
			"#9aedfe", -- cyan
			"#cfd6dd", -- white
		},
		brights = {
			"#4b5263",
			"#ff6e6e",
			"#7bffaf",
			"#fdfdbd",
			"#7ad9ff",
			"#ff9bd6",
			"#b6ffff",
			"#ffffff",
		},
	},

	-- TRANSPARENCY & GLOW (very subtle)
	window_background_opacity = 0.94,
	text_background_opacity = 0.98,

	-- TERMINAL CHROME: removed
	initial_cols = 60,
	initial_rows = 38,
	enable_wayland = true,
	window_close_confirmation = "AlwaysPrompt",
	window_decorations = "NONE",
	enable_scroll_bar = false,
	enable_tab_bar = false,
	scrollback_lines = 10000,

	-- CURSOR: HUD-style
	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 650,
	-- cursor_blink_ease_in = "Constant",
	-- cursor_blink_ease_out = "Constant",

	-- GEOMETRY (cinematic margins)
	window_padding = {
		left = 9.5,
		right = 9.5,
		top = 9.5,
		bottom = 9.5,
	},

	-- NO DISTRACTIONS
	audible_bell = "Disabled",
	warn_about_missing_glyphs = false,
}
