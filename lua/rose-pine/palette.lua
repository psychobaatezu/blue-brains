local options = require("rose-pine.config").options
local variants = {
	main = {
		_nc = "#1e1f22",
		base = "#28292e",
		surface = "#2f3036",
		overlay = "#393a42",
		muted = "#5c5e64",
		subtle = "#6d6f77",
		text = "#c8c9cf",
		love = "#7e9eeb",
		gold = "#c07fcc",
		rose = "#dfc289",
		pine = "#81a1ef",
		foam = "#89cdd4",
		iris = "#aa8aec",
		highlight_low = "#323338",
                highlight_med = "#29417f",
		highlight_high = "#3a3b40",
		none = "NONE",
	},
	moon = {
		_nc = "#1f1d30",
		base = "#232136",
		surface = "#2a273f",
		overlay = "#393552",
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#f6c177",
		rose = "#ea9a97",
		pine = "#3e8fb0",
		foam = "#9ccfd8",
		iris = "#c4a7e7",
		highlight_low = "#2a283e",
		highlight_med = "#44415a",
		highlight_high = "#56526e",
		none = "NONE",
	},
	dawn = {
		_nc = "#f8f0e7",
		base = "#faf4ed",
		surface = "#fffaf3",
		overlay = "#f2e9e1",
		muted = "#9893a5",
		subtle = "#797593",
		text = "#575279",
		love = "#b4637a",
		gold = "#ea9d34",
		rose = "#d7827e",
		pine = "#286983",
		foam = "#56949f",
		iris = "#907aa9",
		highlight_low = "#f4ede8",
		highlight_med = "#dfdad9",
		highlight_high = "#cecacd",
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
