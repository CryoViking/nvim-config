-- lightline support
local theme = require("cryoviking.groups").setup()

local bg0 = theme.CryovikingBg0.fg
local bg1 = theme.CryovikingBg1.fg
local bg2 = theme.CryovikingBg2.fg
local bg4 = theme.CryovikingBg4.fg
local fg1 = theme.CryovikingFg1.fg
local fg4 = theme.CryovikingFg4.fg

local yellow = theme.CryovikingYellow.fg
local blue = theme.CryovikingBlue.fg
local aqua = theme.CryovikingAqua.fg
local orange = theme.CryovikingOrange.fg
local red = theme.CryovikingRed.fg
local green = theme.CryovikingGreen.fg

local lightline_theme = {
  normal = {
    left = { { bg0, fg4, "bold" }, { fg4, bg2 } },
    middle = { { fg4, bg1 } },
    right = { { bg0, fg4 }, { fg4, bg2 } },
    error = { { bg0, red } },
    warning = { { bg0, yellow } },
  },
  insert = {
    left = { { bg0, blue, "bold" }, { fg1, bg2 } },
    middle = { { fg4, bg1 } },
    right = { { bg0, blue }, { fg1, bg2 } },
  },
  inactive = {
    left = { { bg4, bg1 } },
    middle = { { bg4, bg1 } },
    right = { { bg4, bg1 }, { bg4, bg1 } },
  },
  terminal = {
    left = { { bg0, green, "bold" }, { fg1, bg2 } },
    middle = { { fg4, bg1 } },
    right = { { bg0, green }, { fg1, bg2 } },
  },
  replace = {
    left = { { bg0, aqua, "bold" }, { fg1, bg2 } },
    middle = { { fg4, bg1 } },
    right = { { bg0, aqua }, { fg1, bg2 } },
  },
  visual = {
    left = { { bg0, orange, "bold" }, { bg0, bg4 } },
    middle = { { fg4, bg1 } },
    right = { { bg0, orange }, { bg0, bg4 } },
  },
  tabline = {
    left = { { fg4, bg2 } },
    middle = { { bg0, bg4 } },
    right = { { bg0, orange } },
    tabsel = { { bg0, fg4 } },
  },
}
return lightline_theme
