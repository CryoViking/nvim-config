-- cryoviking palette
local M = {}

M.colors = {
  -- Terminal colors

  -- Core theme colors
  background_0  = "#090910",
  background_1  = "#0B0B10",
  background_2  = "#373737",
  background_3  = "#515151",
  background_4  = "#111113",
  light_grey    = "#F0F0F0",
  white         = "#ffffff",
  blue_0        = "#09b4df",
  blue_1        = "#18add2",
  blue_2        = "#1697b7",
  blue_3        = "#0581a0",
  blue_4        = "#06728d",
  blue_5        = "#049ddc",
  blue_6        = "#28529A", -- "#1653B9",      -- #194BD1",
  blue_7        = "#3AD6D0",
  blue_8        = "#00fff4",
  blue_9        = "#0550CD",
  pink_1        = "#BF37BD",
  pink_2        = "#971496",
  orange_1      = "#af3a03",
  purple_1      = "#B14EFD",
  green_1       = "#1ab504",




  bg0             = "#272932",
  bg1             = "#1b1f31",
  bg2             = "#1b213c",
  bg3             = "#141c41",
  bg4             = "#101b4f",
  bright_red      = "#fb4934",
  bright_yellow   = "#ffff00",
  bright_blue     = "#00fff4",
  bright_purple   = "#88119f",
  bright_aqua     = "#25c57f",
  bright_orange   = "#fe8019",
  neutral_red     = "#cc241d",
  neutral_green   = "#12bf24",
  neutral_yellow  = "#cdcd15",
  neutral_blue    = "#049ddc",
  neutral_purple  = "#7837be",
  neutral_aqua    = "#1c9a63",
  neutral_orange  = "#d65d0e",
  faded_red       = "#9d0006",
  faded_green     = "#176e29",
  faded_yellow    = "#9ea70f",
  faded_blue      = "#165b96",
  faded_purple    = "#4b2e77",
  faded_aqua      = "#14613f",
  faded_orange    = "#af3a03",
  grey            = "#454f51",
}


M.get_base_colors = function(bg, contrast)
  local config = require("cryoviking").config
  local c = M.colors

  for color, hex in pairs(config.palette_overrides) do
    c[color] = hex
  end

  return c
end

return M
