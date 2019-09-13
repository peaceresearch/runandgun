local function setupColors()
	local colors = {
		black = '140c1c',
		purple = '442434',
		blueDark = '30346d',
		grayDark = '4e4a4e',
		brown = '854c30',
		greenDark = '346524',
		red = 'd04648',
		gray = '757161',
		blue = '597dce',
		orange = 'd27d2c',
		gray = '8595a1',
		green = '6daa2c',
		peach = 'd2aa99',
		blueLight = '6dc2ca',
		yellow = 'dad45e',
		offWhite = 'deeed6',
		white = 'ffffff'
	}
  for color, v in pairs(colors) do
    local _, _, r, g, b, a = colors[color]:find('(%x%x)(%x%x)(%x%x)')
    colors[color] = {tonumber(r, 16) / 255, tonumber(g, 16) / 255, tonumber(b, 16) / 255, 1}
  end
  return colors
end

local function load()
end

return {
	gameWidth = 320,
	gameHeight = 240,
	gameScale = 2,
	grid = 16,
	clock = 0,
	load = load,
	colors = setupColors()
}